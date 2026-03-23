#!/usr/bin/env python3
"""
AutoKit/BoxHelper JADX Analysis Helper
Automatically identifies key classes and methods in decompiled output
"""

import os
import re
import json
from pathlib import Path
from collections import defaultdict

class JADXAnalysisHelper:
    def __init__(self):
        self.key_patterns = {
            'usb_communication': [
                r'UsbManager',
                r'UsbDevice',
                r'UsbDeviceConnection',
                r'bulkTransfer',
                r'0x1314',
                r'vendorId.*4884',
                r'USB_PERMISSION',
                r'claimInterface'
            ],
            'protocol_implementation': [
                r'0x55AA55AA',
                r'1437226410',
                r'ByteBuffer.*LITTLE_ENDIAN',
                r'putInt.*getInt',
                r'command.*0x01',
                r'heartbeat.*0xAA',
                r'magic.*header',
                r'checksum.*0xFFFFFFFF'
            ],
            'session_management': [
                r'scheduleAtFixedRate',
                r'ThreadPoolExecutor',
                r'ScheduledExecutorService',
                r'Handler.*handleMessage',
                r'Message.*obtain',
                r'ConcurrentHashMap',
                r'Future.*cancel'
            ],
            'touch_system': [
                r'InputManager',
                r'injectInputEvent',
                r'MotionEvent',
                r'127\.0\.0\.1.*8878',
                r'ServerSocket',
                r'sendAction',
                r'touchDown|touchUp|touchMove'
            ],
            'audio_processing': [
                r'AudioManager',
                r'AudioRecord',
                r'AudioTrack',
                r'webrtc',
                r'XTour',
                r'processData',
                r'libAudioProcess',
                r'pcm.*audio'
            ],
            'video_processing': [
                r'MediaCodec',
                r'SurfaceView',
                r'H264',
                r'OpenH264',
                r'decodeFrame',
                r'Surface.*create',
                r'screencap',
                r'DisplayManager'
            ],
            'service_layer': [
                r'Service.*extends',
                r'CarPlay',
                r'AndroidAuto',
                r'startForeground',
                r'NotificationManager',
                r'BroadcastReceiver',
                r'MediaButtonReceiver'
            ]
        }
        
        self.obfuscated_patterns = {
            'single_letter_class': r'class [a-z] \{',
            'short_package': r'package [a-z](\.[a-z]){1,2};',
            'obfuscated_method': r'public [a-z]\(',
            'numbered_variable': r'f\d+[a-z]'
        }
        
        self.results = {}
        self.obfuscation_analysis = defaultdict(list)
        
    def analyze_jadx_output(self, decompiled_dir):
        """Analyze JADX decompiled output and identify key classes"""
        
        if not os.path.exists(decompiled_dir):
            print(f"Directory not found: {decompiled_dir}")
            return None
        
        print(f"Analyzing JADX output in: {decompiled_dir}")
        print("=" * 60)
        
        self.results = {category: [] for category in self.key_patterns.keys()}
        
        # Walk through all Java files
        java_files_found = 0
        for root, dirs, files in os.walk(decompiled_dir):
            for file in files:
                if file.endswith('.java'):
                    java_files_found += 1
                    file_path = os.path.join(root, file)
                    self.analyze_file(file_path, decompiled_dir)
        
        print(f"\\nAnalyzed {java_files_found} Java files")
        return self.results
    
    def analyze_file(self, file_path, base_dir):
        """Analyze individual Java file"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            relative_path = os.path.relpath(file_path, base_dir)
            
            # Check for functionality patterns
            for category, patterns in self.key_patterns.items():
                for pattern in patterns:
                    if re.search(pattern, content, re.IGNORECASE):
                        if relative_path not in self.results[category]:
                            self.results[category].append({
                                'file': relative_path,
                                'matched_pattern': pattern,
                                'class_name': self.extract_class_name(content),
                                'key_methods': self.extract_key_methods(content, pattern)
                            })
                        break
            
            # Check for obfuscation patterns
            self.analyze_obfuscation(content, relative_path)
            
        except Exception as e:
            print(f"Error reading {file_path}: {e}")
    
    def extract_class_name(self, content):
        """Extract main class name from Java content"""
        match = re.search(r'public class ([\\w$]+)', content)
        return match.group(1) if match else "Unknown"
    
    def extract_key_methods(self, content, pattern):
        """Extract key methods related to matched pattern"""
        methods = []
        
        # Look for public methods near the matched pattern
        lines = content.split('\\n')
        for i, line in enumerate(lines):
            if re.search(pattern, line, re.IGNORECASE):
                # Look for method definitions in surrounding lines
                for j in range(max(0, i-5), min(len(lines), i+5)):
                    method_match = re.search(r'public [\\w<>\\[\\]\\s]+ (\\w+)\\(', lines[j])
                    if method_match:
                        method_name = method_match.group(1)
                        if method_name not in methods and not method_name.startswith('get') and not method_name.startswith('set'):
                            methods.append(method_name)
        
        return methods[:3]  # Limit to 3 key methods
    
    def analyze_obfuscation(self, content, file_path):
        """Analyze obfuscation patterns in the file"""
        for pattern_name, pattern in self.obfuscated_patterns.items():
            matches = re.findall(pattern, content)
            if matches:
                self.obfuscation_analysis[pattern_name].extend([
                    {'file': file_path, 'matches': matches}
                ])
    
    def generate_mapping_report(self):
        """Generate comprehensive mapping report"""
        
        print("\\n" + "=" * 60)
        print("AutoKit/BoxHelper JADX Analysis Report")
        print("=" * 60)
        
        # Functionality analysis
        for category, files in self.results.items():
            if files:
                print(f"\\n## {category.replace('_', ' ').title()}")
                print("-" * 40)
                for file_info in sorted(files, key=lambda x: x['file']):
                    print(f"  📁 {file_info['file']}")
                    print(f"     Class: {file_info['class_name']}")
                    print(f"     Pattern: {file_info['matched_pattern']}")
                    if file_info['key_methods']:
                        print(f"     Methods: {', '.join(file_info['key_methods'])}")
                    print()
        
        # Obfuscation analysis
        print("\\n## Obfuscation Analysis")
        print("-" * 40)
        for pattern_name, pattern_data in self.obfuscation_analysis.items():
            if pattern_data:
                print(f"  {pattern_name}: {len(pattern_data)} files affected")
        
        # Recommendations
        self.generate_recommendations()
        
        return self.results
    
    def generate_recommendations(self):
        """Generate analysis recommendations"""
        print("\\n## Recommendations")
        print("-" * 40)
        
        # Check for BoxHelper vs AutoKit patterns
        boxhelper_indicators = [
            'cn/manstep/phonemirrorBox',
            'b/a/a/c.java',
            'UsbManager'
        ]
        
        autokit_indicators = [
            'CarPlay',
            'AudioProcess', 
            'webrtc',
            'screencap'
        ]
        
        all_files = [item['file'] for category in self.results.values() for item in category]
        
        is_boxhelper = any(any(indicator in f for f in all_files) for indicator in boxhelper_indicators)
        is_autokit = any(any(indicator in f for f in all_files) for indicator in autokit_indicators)
        
        if is_boxhelper:
            print("  📦 Detected: BoxHelper APK")
            print("     - Focus on: b/a/a/c.java (USB communication)")
            print("     - Focus on: cn/manstep/phonemirrorBox/MainActivity.java (UI)")
            print("     - Key search: '0x55AA55AA' for protocol")
        
        if is_autokit:
            print("  🎵 Detected: AutoKit APK")  
            print("     - Focus on: Service classes for main functionality")
            print("     - Focus on: Native libraries for audio/video")
            print("     - Key search: 'libAudioProcess' for audio")
        
        if not is_boxhelper and not is_autokit:
            print("  ❓ Unknown APK structure")
            print("     - Check for obfuscated main classes")
            print("     - Look for native library references")
        
        # Deobfuscation recommendations
        obfuscation_count = sum(len(data) for data in self.obfuscation_analysis.values())
        if obfuscation_count > 10:
            print("  🔒 Heavy obfuscation detected")
            print("     - Consider using --deobf flag with JADX")
            print("     - Try dex2jar + CFR as alternative")
        else:
            print("  ✅ Minimal obfuscation detected")
            print("     - Standard JADX decompilation should work well")
    
    def export_json_mapping(self, output_file):
        """Export results as JSON mapping file"""
        export_data = {
            'analysis_results': self.results,
            'obfuscation_analysis': dict(self.obfuscation_analysis),
            'recommendations': self.generate_recommendations_data()
        }
        
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(export_data, f, indent=2, ensure_ascii=False)
        
        print(f"\\nExported detailed mapping to: {output_file}")
    
    def generate_recommendations_data(self):
        """Generate recommendations data for export"""
        all_files = [item['file'] for category in self.results.values() for item in category]
        
        return {
            'apk_type': self.detect_apk_type(all_files),
            'obfuscation_level': self.assess_obfuscation_level(),
            'key_files_to_examine': self.identify_key_files(),
            'search_patterns': self.get_relevant_search_patterns()
        }
    
    def detect_apk_type(self, all_files):
        """Detect if this is BoxHelper, AutoKit, or unknown"""
        if any('phonemirrorBox' in f for f in all_files):
            return 'BoxHelper'
        elif any('CarPlay' in f or 'AudioProcess' in f for f in all_files):
            return 'AutoKit'
        else:
            return 'Unknown'
    
    def assess_obfuscation_level(self):
        """Assess the level of obfuscation"""
        total_obfuscated = sum(len(data) for data in self.obfuscation_analysis.values())
        if total_obfuscated > 20:
            return 'High'
        elif total_obfuscated > 5:
            return 'Medium'
        else:
            return 'Low'
    
    def identify_key_files(self):
        """Identify the most important files to examine"""
        key_files = []
        
        # Priority order for examination
        priority_categories = [
            'usb_communication',
            'session_management', 
            'protocol_implementation',
            'service_layer'
        ]
        
        for category in priority_categories:
            if category in self.results and self.results[category]:
                key_files.extend([item['file'] for item in self.results[category][:2]])
        
        return key_files[:5]  # Top 5 files
    
    def get_relevant_search_patterns(self):
        """Get the most relevant search patterns based on detected functionality"""
        relevant_patterns = []
        
        for category, items in self.results.items():
            if items:
                relevant_patterns.extend(self.key_patterns[category][:3])
        
        return list(set(relevant_patterns))  # Remove duplicates

def main():
    import sys
    
    if len(sys.argv) not in [2, 3]:
        print("Usage: python3 jadx_analysis_helper.py <decompiled_directory> [output.json]")
        print()
        print("Examples:")
        print("  python3 jadx_analysis_helper.py boxhelper_decompiled")
        print("  python3 jadx_analysis_helper.py autokit_decompiled mapping.json")
        sys.exit(1)
    
    decompiled_dir = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) == 3 else None
    
    analyzer = JADXAnalysisHelper()
    results = analyzer.analyze_jadx_output(decompiled_dir)
    
    if results:
        analyzer.generate_mapping_report()
        
        if output_file:
            analyzer.export_json_mapping(output_file)

if __name__ == "__main__":
    main()