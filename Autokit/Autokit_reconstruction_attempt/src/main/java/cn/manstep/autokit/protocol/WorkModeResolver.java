/**
 * WorkModeResolver.java
 * /* UNVERIFIED: purpose inferred from code analysis */
 *
 * Utility class that resolves the combined "work mode" from the separate
 * iPhone and Android work modes stored in BoxProtocol.OpenParams (f.k).
 *
 * Provides bidirectional mapping between a unified work mode integer and
 * the separate iPhone/Android mode values, plus human-readable names.
 *
 * Work mode values:
 *   0 = Unknown
 *   1 = iPhone charge only (iphoneWorkMode=4, androidWorkMode=0)
 *   2 = HiCar via AndroidMirror (iphoneWorkMode=4, androidWorkMode=3)
 *   3 = CarPlay (iphoneWorkMode=2, androidWorkMode=0)
 *   4 = AndroidAuto (iphoneWorkMode=4, androidWorkMode=1)
 *   5 = CarLife (iphoneWorkMode=4, androidWorkMode=2)
 *   6 = HiCar (iphoneWorkMode=4, androidWorkMode=4)
 *   7 = CarLink/ICCOA (iphoneWorkMode=4, androidWorkMode=5)
 *
 * Original: BoxInterface/g.java
 */
package cn.manstep.autokit.protocol;

import cn.manstep.phonemirrorBox.BoxInterface.f; /* BoxProtocol */

public class WorkModeResolver {

    /** Get current Android work mode from OpenParams. was: method 'a()' */
    public static int getAndroidWorkMode() {
        return f.k.d();  /* OpenParams.getAndroidWorkMode() */
    }

    /** Get current iPhone work mode from OpenParams. was: method 'b()' */
    public static int getIphoneWorkMode() {
        return f.k.f();  /* OpenParams.getIphoneWorkMode() */
    }

    /** Get resolved combined work mode from current OpenParams. was: method 'c()' */
    public static int getCurrentWorkMode() {
        return resolveWorkMode(f.k.f(), f.k.d());
    }

    /**
     * Resolve combined work mode from iPhone and Android mode values.
     * was: method 'd(int iphoneMode, int androidMode)'
     *
     * @param iphoneMode   the iPhone work mode (0=invalid, 2=CarPlay, 4=iPhoneCharge)
     * @param androidMode  the Android work mode (0=invalid, 1=AndroidAuto, 2=CarLife, 3=AndroidMirror, 4=HiCar, 5=ICCOA)
     * @return combined work mode integer (0-7)
     */
    public static int resolveWorkMode(int iphoneMode, int androidMode) {
        if (androidMode == 0) {
            if (iphoneMode == 2) {
                return 3;  /* CarPlay */
            }
            if (iphoneMode == 4) {
                return 1;  /* iPhone charge only */
            }
        }
        if (iphoneMode != 4) {
            return 0;  /* Unknown */
        }
        if (androidMode == 1) {
            return 4;  /* AndroidAuto */
        }
        if (androidMode == 2) {
            return 5;  /* CarLife */
        }
        if (androidMode == 3) {
            return 2;  /* HiCar via AndroidMirror */
        }
        if (androidMode != 4) {
            return androidMode != 5 ? 0 : 7;  /* ICCOA/CarLink or Unknown */
        }
        return 6;  /* HiCar */
    }

    /**
     * Get human-readable name for a work mode.
     * was: method 'e(int)'
     */
    public static String getWorkModeName(int mode) {
        return mode != 3 ? mode != 4 ? mode != 6 ? mode != 7 ? "Unknown" : "CarLink" : "HiCar" : "AndroidAuto" : "CarPlay";
    }

    /**
     * Set the work mode by updating both iPhone and Android modes in OpenParams,
     * then triggers a re-send of open params if connected.
     * was: method 'f(int)'
     */
    public static void setWorkMode(int mode) {
        if (mode == getCurrentWorkMode()) {
            return;
        }
        switch (mode) {
            case 1: /* iPhone charge only */
                f.k.b(0);   /* setAndroidWorkMode(0) -> Invalid */
                f.k.c(4);   /* setIphoneWorkMode(4) -> iPhoneCharge */
                break;
            case 2: /* HiCar via AndroidMirror */
                f.k.c(4);   /* setIphoneWorkMode(4) */
                f.k.b(3);   /* setAndroidWorkMode(3) -> AndroidMirror */
                break;
            case 3: /* CarPlay */
                f.k.c(2);   /* setIphoneWorkMode(2) -> CarPlay */
                f.k.b(0);   /* setAndroidWorkMode(0) -> Invalid */
                break;
            case 4: /* AndroidAuto */
                f.k.c(4);
                f.k.b(1);   /* setAndroidWorkMode(1) -> AndroidAuto */
                break;
            case 5: /* CarLife */
                f.k.c(4);
                f.k.b(2);   /* setAndroidWorkMode(2) -> CarLife */
                break;
            case 6: /* HiCar */
                f.k.c(4);
                f.k.b(4);   /* setAndroidWorkMode(4) -> HiCar */
                break;
            case 7: /* CarLink/ICCOA */
                f.k.c(4);
                f.k.b(5);   /* setAndroidWorkMode(5) -> ICCOA */
                break;
            default:
                return;
        }
        if (AdapterManager.isConnected()) {  /* was: d.i() */
            AdapterManager.boxProtocol.Y0();  /* was: d.l.Y0() -- send_g_open_async */
        }
    }
}
