// =============================================================================
// Frida Live Instrumentation for Autokit (cn.manstep.phonemirrorBox)
// =============================================================================
// Usage:
//   frida -U -n cn.manstep.phonemirrorBox -l frida_hooks.js
//   OR: frida -U -f cn.manstep.phonemirrorBox -l frida_hooks.js --no-pause
//
// Hooks key methods to trace:
//   - Video sizing (resizeAndroidAutoView, setVideoWH, ReSizeView)
//   - Touch coordinate transformation
//   - AndroidAuto size calculation and sending
//   - Protocol commands (sendAndroidAutoSize, sendBoxAllSettings)
//   - View lifecycle (surfaceCreated/Changed/Destroyed)
// =============================================================================

'use strict';

function hookClass(className, methodName, hookFn) {
    try {
        var cls = Java.use(className);
        if (cls[methodName]) {
            hookFn(cls, methodName);
            console.log('[+] Hooked ' + className + '.' + methodName);
        }
    } catch (e) {
        // Class not loaded yet, skip
    }
}

Java.perform(function() {
    console.log('[*] Frida hooks loading for Autokit...');

    // ═══ AutoBoxMirrorViewCommon (class i) — Video scaling ═══
    try {
        var ViewCommon = Java.use('cn.manstep.phonemirrorBox.i');

        // resizeAndroidAutoView(view, screenW, screenH)
        ViewCommon.c.overload('android.view.View', 'int', 'int').implementation = function(view, screenW, screenH) {
            console.log('\n[VIDEO] resizeAndroidAutoView:');
            console.log('  Screen: ' + screenW + 'x' + screenH);
            console.log('  Video:  ' + this.e.value + 'x' + this.f.value);
            console.log('  Before: scaled=' + this.a.value + 'x' + this.f1667b.value +
                        ' offset=' + this.f1668c.value + ',' + this.f1669d.value);

            this.c(view, screenW, screenH);

            console.log('  After:  scaled=' + this.a.value + 'x' + this.f1667b.value +
                        ' offset=' + this.f1668c.value + ',' + this.f1669d.value);
            var lp = view.getLayoutParams();
            console.log('  Layout: ' + lp.width.value + 'x' + lp.height.value);
            console.log('  View pos: left=' + view.getLeft() + ' top=' + view.getTop());
        };
        console.log('[+] Hooked resizeAndroidAutoView');
    } catch(e) { console.log('[-] ViewCommon hook failed: ' + e); }

    // ═══ VideoSizeManager (class c0) — AA size calculation ═══
    try {
        var VideoSize = Java.use('cn.manstep.phonemirrorBox.c0');

        // getAndroidAutoSize()
        VideoSize.a.overload().implementation = function() {
            var result = this.a();
            console.log('[SIZE] getAndroidAutoSize: ' + result.f1934b.value + 'x' + result.f1935c.value);
            return result;
        };

        // getMaxVideoSize()
        VideoSize.m.overload().implementation = function() {
            var result = VideoSize.m();
            console.log('[SIZE] getMaxVideoSize: ' + result.f1934b.value + 'x' + result.f1935c.value);
            return result;
        };

        // getAndroidAutoSizeForTier(tierHeight)
        VideoSize.b.overload('int').implementation = function(tierH) {
            var result = VideoSize.b(tierH);
            console.log('[SIZE] getAAForTier(' + tierH + '): ' + result.f1934b.value + 'x' + result.f1935c.value);
            return result;
        };

        // calculateAndroidAutoSizeFromAspectRatio(videoW, videoH)
        var vsInst = VideoSize.i();
        vsInst.g.overload('int', 'int').implementation = function(vw, vh) {
            var result = this.g(vw, vh);
            console.log('[SIZE] calcAASizeFromAR(' + vw + 'x' + vh + '): ' +
                        result.f1934b.value + 'x' + result.f1935c.value);
            return result;
        };

        console.log('[+] Hooked VideoSizeManager');
    } catch(e) { console.log('[-] VideoSize hook failed: ' + e); }

    // ═══ BoxProtocol (class BoxInterface.f) — Protocol commands ═══
    try {
        var BoxProto = Java.use('cn.manstep.phonemirrorBox.BoxInterface.f');

        // sendAndroidAutoSize(w, h)
        BoxProto.g0.overload('int', 'int').implementation = function(w, h) {
            console.log('\n[PROTO] sendAndroidAutoSize: ' + w + 'x' + h);
            console.log('  ' + new Error().stack.split('\n').slice(1, 4).join('\n  '));
            return this.g0(w, h);
        };

        // sendBoxAllSettings()
        BoxProto.q0.overload().implementation = function() {
            console.log('\n[PROTO] sendBoxAllSettings called');
            var result = this.q0();
            console.log('  result: ' + result);
            return result;
        };

        console.log('[+] Hooked BoxProtocol');
    } catch(e) { console.log('[-] BoxProtocol hook failed: ' + e); }

    // ═══ AutoBoxMirrorView — Surface lifecycle ═══
    try {
        var MirrorView = Java.use('cn.manstep.phonemirrorBox.AutoBoxMirrorView');

        MirrorView.surfaceCreated.implementation = function(holder) {
            console.log('[SURFACE] AutoBoxMirrorView.surfaceCreated');
            this.surfaceCreated(holder);
        };

        MirrorView.surfaceChanged.implementation = function(holder, fmt, w, h) {
            console.log('[SURFACE] AutoBoxMirrorView.surfaceChanged: ' + w + 'x' + h + ' fmt=' + fmt);
            this.surfaceChanged(holder, fmt, w, h);
        };

        // setVideoWH(w, h)
        MirrorView.h.overload('int', 'int').implementation = function(w, h) {
            console.log('[VIDEO] setVideoWH: ' + w + 'x' + h);
            this.h(w, h);
        };

        // ReSizeView(screenW, screenH)
        MirrorView.b.overload('int', 'int').implementation = function(w, h) {
            console.log('[VIDEO] ReSizeView: screen=' + w + 'x' + h);
            this.b(w, h);
        };

        console.log('[+] Hooked AutoBoxMirrorView');
    } catch(e) { console.log('[-] MirrorView hook failed: ' + e); }

    // ═══ AutoBoxMirrorTextureView — TextureView lifecycle ═══
    try {
        var TexView = Java.use('cn.manstep.phonemirrorBox.AutoBoxMirrorTextureView');

        TexView.onSurfaceTextureAvailable.implementation = function(st, w, h) {
            console.log('[TEXTURE] onSurfaceTextureAvailable: ' + w + 'x' + h);
            this.onSurfaceTextureAvailable(st, w, h);
        };

        TexView.onSurfaceTextureSizeChanged.implementation = function(st, w, h) {
            console.log('[TEXTURE] onSurfaceTextureSizeChanged: ' + w + 'x' + h);
            this.onSurfaceTextureSizeChanged(st, w, h);
        };

        console.log('[+] Hooked AutoBoxMirrorTextureView');
    } catch(e) { console.log('[-] TextureView hook failed: ' + e); }

    // ═══ Touch event tracing ═══
    try {
        var TouchHandler = Java.use('cn.manstep.phonemirrorBox.BoxInterface.e');

        TouchHandler.b.overload('android.view.MotionEvent', 'int', 'int', 'int', 'int').implementation = function(event, offX, offY, scaleW, scaleH) {
            var action = event.getActionMasked();
            if (action === 0 || action === 1) { // DOWN or UP only (MOVE is too noisy)
                console.log('[TOUCH] processMotionEvent: action=' + action +
                           ' offset=(' + offX + ',' + offY + ') scale=(' + scaleW + ',' + scaleH + ')');
            }
            return TouchHandler.b(event, offX, offY, scaleW, scaleH);
        };

        console.log('[+] Hooked TouchHandler');
    } catch(e) { console.log('[-] TouchHandler hook failed: ' + e); }

    // ═══ DeviceConfig (class u) — Platform detection ═══
    try {
        var DevConf = Java.use('cn.manstep.phonemirrorBox.u');

        // isFitSizeMode
        DevConf.T.overload().implementation = function() {
            var result = this.T();
            console.log('[CONFIG] isFitSizeMode: ' + result);
            return result;
        };

        console.log('[+] Hooked DeviceConfig');
    } catch(e) { console.log('[-] DeviceConfig hook failed: ' + e); }

    // ═══ BoxInterface (class d) — State checks ═══
    try {
        var BoxIface = Java.use('cn.manstep.phonemirrorBox.BoxInterface.d');

        // isAndroidAutoWithVersionCheck
        BoxIface.u.overload().implementation = function() {
            var result = BoxIface.u();
            if (result) console.log('[STATE] isAndroidAutoWithVersionCheck: TRUE');
            return result;
        };

        console.log('[+] Hooked BoxInterface state');
    } catch(e) { console.log('[-] BoxInterface hook failed: ' + e); }

    // ═══ GlobalConfig (class p) — Flag reads ═══
    try {
        var GConf = Java.use('cn.manstep.phonemirrorBox.p');
        console.log('[CONFIG] GlobalConfig flags:');
        console.log('  useTextureView (p.i): ' + GConf.i.value);
        console.log('  useSoftDecode (p.g): ' + GConf.g.value);
        console.log('  screenSize: ' + GConf.k.value + 'x' + GConf.l.value);
        console.log('  frameRate: ' + GConf.C.value);
        console.log('  version: ' + GConf.a.value);
    } catch(e) { console.log('[-] GlobalConfig read failed: ' + e); }

    console.log('\n[*] All hooks installed. Waiting for events...\n');
});
