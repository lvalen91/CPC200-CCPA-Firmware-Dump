/**
 * FileUtil.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.n
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * File system utility for managing cache directories (audio, log, video, data, tmp),
 * file I/O operations (append, write, base64 encode), XML resource parsing,
 * and cleanup operations. All cache subdirectories are created under context.getCacheDir().
 */
package cn.manstep.autokit.util;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.Base64;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

public class FileUtil /* was: 'util.n' */ {

    /**
     * Write raw bytes to an audio file.
     * /* was: 'A' */
     */
    public static boolean writeAudioFile(/* was: 'A' */ byte[] data, String fileName, Context context) {
        File dir = getAudioDir(context);
        if (dir == null) { return false; }
        return appendBytes(data, dir.getAbsolutePath() + "/" + fileName);
    }

    /**
     * Delete all files in the recording/audio cache directory.
     * /* was: 'a' */
     */
    public static void deleteAudioFiles(/* was: 'a' */ Context context) {
        File dir = getAudioDir(context);
        File[] files;
        if (dir == null || (files = dir.listFiles()) == null) { return; }
        for (File file : files) {
            if (file.isFile()) { file.delete(); }
        }
    }

    /**
     * Delete all files in the log cache directory.
     * /* was: 'b' */
     */
    public static void deleteLogFiles(/* was: 'b' */ Context context) {
        File dir = getLogDir(context);
        File[] files;
        if (dir == null || (files = dir.listFiles()) == null) { return; }
        for (File file : files) {
            if (file.isFile()) { file.delete(); }
        }
    }

    /**
     * Delete all files in the video cache directory.
     * /* was: 'c' */
     */
    public static void deleteVideoFiles(/* was: 'c' */ Context context) {
        File dir = getVideoDir(context);
        File[] files;
        if (dir == null || (files = dir.listFiles()) == null) { return; }
        for (File file : files) {
            if (file.isFile()) { file.delete(); }
        }
    }

    /**
     * Delete a specific file from the audio directory.
     * /* was: 'd' */
     */
    public static void deleteAudioFile(/* was: 'd' */ Context context, String fileName) {
        File dir = getAudioDir(context);
        if (dir != null) {
            File file = new File(dir, fileName);
            if (file.isFile() && file.exists()) { file.delete(); }
        }
    }

    /**
     * Recursively delete a directory and all its contents.
     * /* was: 'e' */
     */
    public static void deleteRecursive(/* was: 'e' */ File dir) {
        File[] files;
        if (dir == null || !dir.exists() || (files = dir.listFiles()) == null) { return; }
        for (File file : files) {
            if (file.isDirectory()) {
                deleteRecursive(file);
            } else {
                file.delete();
            }
        }
        dir.delete();
    }

    /**
     * Delete a file by path.
     * /* was: 'f' */
     */
    public static boolean deleteFile(/* was: 'f' */ String path) {
        File file = new File(path);
        if (file.isFile() && file.exists()) { return file.delete(); }
        return true;
    }

    /**
     * Encode a file to base64 and write to the log directory.
     * /* was: 'g' */
     */
    public static File encodeToBase64InLogDir(/* was: 'g' */ File sourceFile, Context context) {
        File logDir = getLogDir(context);
        if (logDir == null || !logDir.isDirectory()) { return null; }
        return encodeFileToBase64(sourceFile,
                new File(logDir, sourceFile.getName() + ".bs64").getAbsolutePath());
    }

    /**
     * Encode a file to base64 adjacent to the source.
     * /* was: 'h' */
     */
    public static File encodeToBase64(/* was: 'h' */ File sourceFile) {
        return encodeFileToBase64(sourceFile, sourceFile.getAbsolutePath() + ".bs64");
    }

    /**
     * Encode a file to base64 from a path string.
     * /* was: 'i' */
     */
    public static String encodeToBase64Path(/* was: 'i' */ String path) {
        File encoded = encodeToBase64(new File(path));
        if (encoded != null) { return encoded.getAbsolutePath(); }
        return null;
    }

    /**
     * Internal: read file, encode to base64, write to destination.
     * /* was: 'j' (private) */
     */
    private static File encodeFileToBase64(/* was: 'j' */ File source, String destPath) {
        if (source == null || !source.isFile()) { return null; }
        FileInputStream fis = null;
        FileOutputStream fos = null;
        try {
            fis = new FileInputStream(source);
            int available = fis.available();
            byte[] data = new byte[available];
            if (fis.read(data) == available) {
                byte[] encoded = Base64.encode(data, 2);
                File dest = new File(destPath);
                fos = new FileOutputStream(dest);
                fos.write(encoded);
                try { fis.close(); if (fos != null) fos.close(); } catch (Exception e) { e.printStackTrace(); }
                return dest;
            }
            try { fis.close(); if (fos != null) fos.close(); } catch (Exception e) { e.printStackTrace(); }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            try { if (fis != null) fis.close(); if (fos != null) fos.close(); } catch (Exception e2) { e2.printStackTrace(); }
            return null;
        }
    }

    /** Get the audio cache directory. /* was: 'k' */ */
    public static File getAudioDir(/* was: 'k' */ Context context) {
        return getSubDir(context, "audio");
    }

    /** Get a named subdirectory under cache. /* was: 'l' */ */
    public static File getSubDir(/* was: 'l' */ Context context, String name) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null || !cacheDir.isDirectory()) { return null; }
        return ensureDirectory(cacheDir, name);
    }

    /** Get the data cache directory. /* was: 'm' */ */
    public static File getDataDir(/* was: 'm' */ Context context) {
        return getSubDir(context, "data");
    }

    /** Get the log cache directory. /* was: 'n' */ */
    public static File getLogDir(/* was: 'n' */ Context context) {
        return getSubDir(context, "log");
    }

    /** Get the crash log file for today. /* was: 'o' */ */
    public static File getCrashLogFile(/* was: 'o' */ Context context) {
        File logDir = getLogDir(context);
        if (logDir == null) { return null; }
        File file = new File(logDir,
                "CrashLog_" + new SimpleDateFormat("yyyyMMdd", Locale.CHINA).format(new Date()) + ".log");
        if (file.isFile()) { return file; }
        return null;
    }

    /** Get today's app log file. /* was: 'p' */ */
    public static File getAppLogFile(/* was: 'p' */ Context context) {
        File logDir = getLogDir(context);
        if (logDir == null) { return null; }
        File file = new File(logDir,
                "app_" + new SimpleDateFormat("yyyyMMdd", Locale.CHINA).format(new Date()) + ".log");
        if (file.isFile()) { return file; }
        return null;
    }

    /** Get the tmp cache directory. /* was: 'q' */ */
    public static File getTmpDir(/* was: 'q' */ Context context) {
        return getSubDir(context, "tmp");
    }

    /** Get the tmp directory path as string. /* was: 'r' */ */
    public static String getTmpPath(/* was: 'r' */ Context context) {
        File dir = getSubDir(context, "tmp");
        return dir != null ? dir.getAbsolutePath() : BuildConfig.FLAVOR;
    }

    /** Get the video cache directory. /* was: 's' */ */
    public static File getVideoDir(/* was: 's' */ Context context) {
        return getSubDir(context, "video");
    }

    /** Parse a string value from an XML resource by tag name. /* was: 't' */ */
    public static String getXmlString(/* was: 't' */ Context context, String tagName, int xmlResId) {
        XmlResourceParser xml = context.getResources().getXml(xmlResId);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2 && tagName.equals(xml.getName())) {
                    return xml.nextText();
                }
            }
            return null;
        } catch (IOException | XmlPullParserException e) {
            e.printStackTrace();
            Logger.logDebug("getXmlString", "Exception: " + e);
            return null;
        }
    }

    /** Check if audio recordings exist. /* was: 'u' */ */
    public static boolean hasAudioFiles(/* was: 'u' */ Context context) {
        return hasFiles(context, "audio");
    }

    /** Check if a directory has files. /* was: 'v' (private) */ */
    private static boolean hasFiles(/* was: 'v' */ Context context, String dirName) {
        File dir = getSubDir(context, dirName);
        File[] files;
        return dir != null && dir.isDirectory() && (files = dir.listFiles()) != null && files.length > 0;
    }

    /** Ensure a subdirectory exists. /* was: 'w' (private) */ */
    private static File ensureDirectory(/* was: 'w' */ File parent, String name) {
        if (parent == null || !parent.exists() || !parent.isDirectory()) { return null; }
        File dir = new File(parent, name);
        if ((!dir.exists() || dir.isFile()) && !dir.mkdir()) { return null; }
        return dir;
    }

    /** Append bytes to a file at offset. /* was: 'x' */ */
    public static boolean appendBytes(/* was: 'x' */ byte[] data, int offset, int length, String path) {
        try {
            File file = new File(path);
            if (!file.exists() && !file.createNewFile()) { return false; }
            RandomAccessFile raf = new RandomAccessFile(file, "rw");
            raf.seek(file.length());
            raf.write(data, offset, length);
            raf.close();
            return true;
        } catch (Exception unused) { return false; }
    }

    /** Append entire byte array to a file. /* was: 'y' */ */
    public static boolean appendBytes(/* was: 'y' */ byte[] data, String path) {
        try {
            File file = new File(path);
            if (!file.exists() && !file.createNewFile()) { return false; }
            RandomAccessFile raf = new RandomAccessFile(file, "rw");
            raf.seek(file.length());
            raf.write(data);
            raf.close();
            return true;
        } catch (Exception unused) { return false; }
    }

    /** Append bytes to an audio file. /* was: 'z' */ */
    public static boolean appendAudioData(/* was: 'z' */ byte[] data, int offset, int length,
                                            String fileName, Context context) {
        File dir = getAudioDir(context);
        if (dir == null) { return false; }
        return appendBytes(data, offset, length, dir.getAbsolutePath() + "/" + fileName);
    }
}
