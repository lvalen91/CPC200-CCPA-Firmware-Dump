/**
 * QrCodeGenerator.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.v
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * QR code bitmap generator using the ZXing library. Generates QR codes with
 * configurable dimensions, character set, error correction level, margin,
 * and foreground/background colors.
 */
package cn.manstep.autokit.util;

import android.graphics.Bitmap;
import android.text.TextUtils;
import java.util.Hashtable;

public class QrCodeGenerator /* was: 'util.v' */ {

    /**
     * Generate a simple black-on-white QR code bitmap.
     * /* was: 'a' */
     */
    public static Bitmap generate(/* was: 'a' */ String content, int width, int height) {
        return generateCustom(content, width, height, "UTF-8", "L", "0", -16777216, -1);
    }

    /**
     * Generate a QR code bitmap with custom settings.
     * /* was: 'b' */
     *
     * @param content       data to encode
     * @param width         bitmap width
     * @param height        bitmap height
     * @param charset       character set (e.g., "UTF-8")
     * @param errorCorrection error correction level ("L", "M", "Q", "H")
     * @param margin        QR code margin
     * @param foreground    foreground color (ARGB)
     * @param background    background color (ARGB)
     */
    public static Bitmap generateCustom(/* was: 'b' */ String content, int width, int height,
                                          String charset, String errorCorrection, String margin,
                                          int foreground, int background) {
        if (!TextUtils.isEmpty(content) && width >= 0 && height >= 0) {
            try {
                Hashtable<d.c.b.b, String> hints = new Hashtable<>();
                if (!TextUtils.isEmpty(charset)) {
                    hints.put(d.c.b.b.CHARACTER_SET, charset);
                }
                if (!TextUtils.isEmpty(errorCorrection)) {
                    hints.put(d.c.b.b.ERROR_CORRECTION, errorCorrection);
                }
                if (!TextUtils.isEmpty(margin)) {
                    hints.put(d.c.b.b.MARGIN, margin);
                }
                int padding = calculatePadding(content, width, hints) * 2;
                int qrWidth = (width - padding) - 0;
                int qrHeight = (height - padding) + 0;
                d.c.b.d.b matrix = new d.c.b.e.a().a(content, d.c.b.a.QR_CODE, qrWidth, qrHeight, hints);
                int[] pixels = new int[qrWidth * qrHeight];
                for (int y = 0; y < qrHeight; y++) {
                    for (int x = 0; x < qrWidth; x++) {
                        pixels[(y * qrWidth) + x] = matrix.c(x, y) ? foreground : background;
                    }
                }
                if (qrWidth > 0 && qrHeight > 0) {
                    Bitmap bitmap = Bitmap.createBitmap(qrWidth, qrHeight, Bitmap.Config.ARGB_8888);
                    bitmap.setPixels(pixels, 0, qrWidth, 0, 0, qrWidth, qrHeight);
                    return bitmap;
                }
                return null;
            } catch (d.c.b.c e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /**
     * Calculate QR code padding based on module size alignment.
     * /* was: 'c' (private) */
     */
    private static int calculatePadding(/* was: 'c' */ String content, int width,
                                          Hashtable<d.c.b.b, String> hints) {
        try {
            d.c.b.e.c.b version = d.c.b.e.c.c.n(content, d.c.b.e.b.a.L, hints).a();
            if (version == null) { throw new IllegalStateException(); }
            int moduleCount = version.e();
            int maxModules = Math.max(width, moduleCount);
            return (maxModules - (moduleCount * (maxModules / moduleCount))) / 2;
        } catch (d.c.b.c e) {
            e.printStackTrace();
            return 0;
        }
    }
}
