package cn.manstep.autokit.video.scaling;

import android.text.TextUtils;
import android.view.WindowManager;
import java.util.LinkedList;
import java.util.List;

/**
 * VideoSizeManager -- Singleton that manages video resolution tiers for CarPlay,
 * HiCar, and Android Auto output.
 *
 * Maintains a list of resolution tiers (480p, 720p, 1080p, 1440p) derived from
 * the maximum display size, and calculates per-tier DPI values for Android Auto.
 * Also tracks the current CarPlay/HiCar video size and provides resolution-option
 * strings for user-facing settings UI.
 *
 * Deobfuscated from: cn.manstep.phonemirrorBox.c0
 * Utility size class: cn.manstep.phonemirrorBox.util.x  (width = f1934b, height = f1935c)
 */
public class VideoSizeManager {

    /** Singleton instance. */
    private static VideoSizeManager singleton;                               /* was: 'l' */

    /** Current resolution-tier height (e.g. 480, 720, 1080, 1440). */
    private int currentTierHeight = 0;                                       /* was: 'i' */

    /** DPI value for CarPlay / HiCar. */
    private int carplayDpi = 100;                                            /* was: 'j' */

    /** DPI value for Android Auto. */
    private int androidAutoDpi = 100;                                        /* was: 'k' */

    /** Android Auto output size (selected from tier list). */
    private final cn.manstep.phonemirrorBox.util.x androidAutoSize
            = new cn.manstep.phonemirrorBox.util.x();                        /* was: 'f1568c' */

    /** Raw display size reported by the system. */
    private final cn.manstep.phonemirrorBox.util.x displaySize
            = new cn.manstep.phonemirrorBox.util.x();                        /* was: 'a' */

    /** Default video size (from native CarPlay resolution). */
    private final cn.manstep.phonemirrorBox.util.x defaultVideoSize
            = new cn.manstep.phonemirrorBox.util.x();                        /* was: 'f1567b' */

    /** Resolution tiers: 480p, 720p, 1080p, 1440p (landscape/portrait aware). */
    private final List<cn.manstep.phonemirrorBox.util.x> tierList
            = new LinkedList();                                              /* was: 'f1569d' */

    /** Default / fallback size used during max-size computation. */
    private final cn.manstep.phonemirrorBox.util.x defaultSize
            = new cn.manstep.phonemirrorBox.util.x();                        /* was: 'g' */

    /** Current CarPlay / HiCar video size. */
    private final cn.manstep.phonemirrorBox.util.x videoSize
            = new cn.manstep.phonemirrorBox.util.x();                        /* was: 'f' */

    /** Maximum video size (upper bound for scaling). */
    private final cn.manstep.phonemirrorBox.util.x maxVideoSize
            = new cn.manstep.phonemirrorBox.util.x();                        /* was: 'e' */

    /** Human-readable resolution option strings shown in UI (e.g. "1920x1080"). */
    private final List<String> resolutionOptions = new LinkedList();          /* was: 'h' */

    /* ── constructor ────────────────────────────────────────────────── */

    private VideoSizeManager() {
    }

    /* ── singleton ──────────────────────────────────────────────────── */

    /**
     * Returns the singleton instance, creating it if necessary.
     * was: i()
     */
    public static VideoSizeManager getInstance() {
        if (singleton == null) {
            synchronized (VideoSizeManager.class) {
                if (singleton == null) {
                    singleton = new VideoSizeManager();
                }
            }
        }
        return singleton;
    }

    /* ── public static accessors ────────────────────────────────────── */

    /**
     * Returns the Android Auto size for the currently selected tier.
     * was: a()
     */
    public static cn.manstep.phonemirrorBox.util.x getAndroidAutoSize() {
        return getInstance().androidAutoSize;
    }

    /**
     * Selects the given tier height for Android Auto and returns the resulting size.
     * was: b(tierHeight)
     */
    public static cn.manstep.phonemirrorBox.util.x getAndroidAutoSizeForTier(int tierHeight) {
        getInstance().setAutoSize(tierHeight);
        return getAndroidAutoSize();
    }

    /**
     * Returns the list of resolution-option strings.
     * was: l()
     */
    public static List<String> getResolutionOptions() {
        return getInstance().resolutionOptions;
    }

    /**
     * Returns the maximum video size.
     * was: m()
     */
    public static cn.manstep.phonemirrorBox.util.x getMaxVideoSize() {
        return getInstance().maxVideoSize;
    }

    /**
     * Returns the current CarPlay / HiCar video size.
     * was: t()
     */
    public static cn.manstep.phonemirrorBox.util.x getVideoSize() {
        return getInstance().videoSize;
    }

    /* ── factory / initialiser ──────────────────────────────────────── */

    /**
     * Full factory initialiser -- configures display size, default video size,
     * current tier, and optional size override string.
     * was: j(displayW, displayH, defaultW, defaultH, sizeOverride, tier)
     *
     * @param displayW      display width (pixels)
     * @param displayH      display height (pixels)
     * @param defaultW      default video width
     * @param defaultH      default video height
     * @param sizeOverride  "WxH" string from preferences (may be null/empty)
     * @param tier          resolution tier height (480/720/1080/1440)
     */
    public static VideoSizeManager init(int displayW, int displayH,
                                        int defaultW, int defaultH,
                                        String sizeOverride, int tier) {
        String preferredSize;
        getInstance();
        singleton.displaySize.m(displayW, displayH);                         /* was: l.a.m(i, i2) */
        singleton.defaultVideoSize.m(defaultW, defaultH);                    /* was: l.f1567b.m(i3, i4) */
        singleton.currentTierHeight = tier;                                  /* was: l.i = i5 */

        if (cn.manstep.phonemirrorBox.u.z().Y()) {
            /* DeviceConfig.getInstance().usesMeasureBasedMaxSize() */
            if (displayH > displayW) {
                preferredSize = cn.manstep.phonemirrorBox.b0.i()
                        .n("vmaxwh", defaultW + "x" + defaultH);
                        /* was: b0.i().n("vmaxwh", ...) → PreferenceManager.getInstance().getString(...) */
            } else {
                preferredSize = cn.manstep.phonemirrorBox.b0.i()
                        .n("vmaxwh", displayW + "x" + displayH);
            }
            cn.manstep.phonemirrorBox.util.s.d("VideoSize", "getInstance: " + preferredSize);
            cn.manstep.phonemirrorBox.util.x parsed = cn.manstep.phonemirrorBox.util.x.l(preferredSize);
            singleton.setMaxVideoSize(parsed.f1934b, parsed.f1935c);         /* was: l.o(...) */
        } else {
            WindowManager.LayoutParams layoutParams =
                    cn.manstep.phonemirrorBox.u.z().u();
                    /* was: u.z().u() → DeviceConfig.getInstance().getWindowLayoutParams() */
            int w = displayW;
            int h = displayH;
            if (layoutParams != null) {
                int lpWidth = layoutParams.width;
                if (lpWidth > 0) {
                    w = lpWidth;
                    h = defaultH;
                }
                int lpHeight = layoutParams.height;
                if (lpHeight > 0) {
                    w = defaultW;
                    h = lpHeight;
                }
            }
            int adjustedW = w - cn.manstep.phonemirrorBox.u.z().G(
                    MyApplication.b().getResources().getInteger(2131361823));
                    /* was: u.z().G(...) → DeviceConfig.getInstance().getVideoMargin(...) */
            if (h > adjustedW) {
                singleton.setMaxWithDefault(defaultW, defaultH, defaultW, defaultH);
                        /* was: l.p(i3, i4, i3, i4) */
            } else {
                singleton.setMaxWithDefault(adjustedW, h, adjustedW, h);
            }
        }

        if (!TextUtils.isEmpty(sizeOverride)) {
            cn.manstep.phonemirrorBox.util.x overrideParsed =
                    cn.manstep.phonemirrorBox.util.x.l(sizeOverride);
            singleton.setSize(overrideParsed.f1934b, overrideParsed.f1935c);  /* was: l.r(...) */
        }
        return singleton;
    }

    /* ── tier list construction ─────────────────────────────────────── */

    /**
     * Builds the resolution tier list (480p, 720p, 1080p, 1440p) based on
     * the aspect ratio of {@code maxSize}. Each tier preserves the original
     * aspect ratio and snaps dimensions to even numbers.
     * was: c(maxSize)
     */
    private void buildTierList(cn.manstep.phonemirrorBox.util.x maxSize) {
        this.tierList.clear();
        if (maxSize == null || maxSize.k()) {
            this.tierList.add(new cn.manstep.phonemirrorBox.util.x(800, 480));
            return;
        }
        int[] tierHeights = {480, 720, 1080, 1440};
        for (int idx = 0; idx < 4; idx++) {
            int tierH = tierHeights[idx];
            cn.manstep.phonemirrorBox.util.x tier = new cn.manstep.phonemirrorBox.util.x(maxSize);
            int maxW = 2560;

            if (maxSize.f1935c < maxSize.f1934b) {
                /* Portrait: height < width */
                if (tierH == 480) {
                    maxW = 800;
                } else if (tierH == 1080) {
                    maxW = 1920;
                } else if (tierH != 1440) {
                    tierH = 720;
                    maxW = 1280;
                }
                /* tierH == 1440 keeps maxW = 2560 */
            } else {
                /* Landscape: height >= width */
                if (tierH == 480) {
                    tierH = 800;
                    maxW = 480;
                } else if (tierH == 1080) {
                    tierH = 1920;
                    maxW = 1080;
                } else if (tierH == 1440) {
                    tierH = 2560;
                    maxW = 1440;
                } else {
                    tierH = 1280;
                    maxW = 720;
                }
            }

            tier.f1935c = tierH;
            int origH = maxSize.f1935c;
            int calculatedW = ((int) (((tierH * 1.0f) * maxSize.f1934b) / origH)) & 65534;
            tier.f1934b = calculatedW;

            if (calculatedW > maxW) {
                tier.f1934b = maxW;
                tier.f1935c = ((int) (((maxW * 1.0f) * origH) / maxSize.f1934b)) & 65534;
            }
            this.tierList.add(tier);
        }
    }

    /* ── DPI calculation ────────────────────────────────────────────── */

    /**
     * Calculates a DPI value based on pixel area. Returns 100 for areas below
     * 384000 pixels (roughly 800x480). Higher resolutions scale up to ~180.
     * was: d(w, h)
     */
    private int calculateDpi(int w, int h) {
        int area = w * h;
        if (area < 384000) {
            return 100;
        }
        int dpi = (int) (((((area - 384000) * 23) / 998400) + 120) * 1.25f);
        return dpi - (10 - (dpi % 10));
    }

    /* ── resolution option builder ──────────────────────────────────── */

    /**
     * Builds a list of resolution option strings by scaling the given
     * dimensions down (up to 45% reduction in 5% steps) and up (15% increase
     * in 5% steps). Also adds special aspect-ratio variants for common sizes.
     * Returns the index in {@code list} that matches the current (curW x curH).
     * was: e(w, h, curW, curH, list)  -- private helper
     */
    private int buildResolutionOptions(int w, int h, int curW, int curH, List<String> list) {
        LinkedList<String> candidates = new LinkedList<>();

        /* Scale-down candidates (0% to -45% in 5% steps) */
        for (int step = 0; step < 10; step++) {
            double scale = 1.0d - (step * 0.05d);
            int scaledW = (int) Math.ceil(w * scale);
            if (scaledW % 2 == 1) scaledW--;
            int scaledH = (int) Math.ceil(h * scale);
            if (scaledH % 2 == 1) scaledH--;

            if (w > h) {
                if (scaledW < 730 || scaledH < 480) break;
            } else {
                if (scaledW < 570 || scaledH < 800) break;
            }
            candidates.add(scaledW + "x" + scaledH);
        }

        if (list != null) {
            if (candidates.size() == 0) {
                list.add(w + "x" + h);
            } else if (candidates.size() <= 3) {
                list.addAll(candidates);
            } else {
                /* Pick first, middle, last */
                String first  = candidates.get(0);
                String middle = candidates.get(candidates.size() / 2);
                String last   = candidates.get(candidates.size() - 1);
                list.clear();
                list.add(first);
                list.add(middle);
                list.add(last);
            }
        }

        /* Special aspect-ratio variant entries */
        if (w == 1920 && h >= 1080 && h < 1152) {
            if (list != null) list.add("1920x1152");
        } else if (w == 1280 && h >= 720 && h < 768 && list != null) {
            list.add("1088x768");
        }

        /* Scale-up candidates (+5% to +15% in 5% steps) */
        if (list != null) {
            for (int step = 1; step < 4; step++) {
                double scale = 1.0d + (step * 0.05d);
                int scaledW = (int) Math.ceil(w * scale);
                if (scaledW % 2 == 1) scaledW++;
                int scaledH = (int) Math.ceil(h * scale);
                if (scaledH % 2 == 1) scaledH++;
                list.add(scaledW + "x" + scaledH);
            }
        }

        if (list == null) return 0;

        /* Find index of current size in the list */
        String currentKey = curW + "x" + curH;
        for (int idx = 0; idx < list.size(); idx++) {
            if (currentKey.equals(list.get(idx))) {
                return idx;
            }
        }
        return 0;
    }

    /* ── special-size check ─────────────────────────────────────────── */

    /**
     * Returns true if the given dimensions match a known special aspect-ratio
     * override size (1920x1152 or 1088x768).
     * was: k(w, h)
     */
    private boolean isSpecialAspectSize(int w, int h) {
        /* JADX WARN: Removed duplicated region for block -- reconstructed from hash checks */
        byte match;
        String key = w + "x" + h;
        int hash = key.hashCode();
        if (hash != 802059919) {
            match = (hash == 807443360 && key.equals("1088x768")) ? (byte) 1 : (byte) -1;
        } else if (key.equals("1920x1152")) {
            match = 0;
        } else {
            match = -1; /* UNCERTAIN -- JADX flow was incomplete */
        }
        return match == 0 || match == 1;
    }

    /* ── auto size (Android Auto) ───────────────────────────────────── */

    /**
     * Sets the Android Auto size for a given tier height. Picks the matching
     * entry from {@link #tierList} and computes the Android Auto DPI.
     * was: n(tierHeight)
     */
    private void setAutoSize(int tierHeight) {
        this.currentTierHeight = tierHeight;                                 /* was: this.i = i */
        if (this.tierList.size() < 2) {
            this.androidAutoSize.n(this.tierList.get(0));
        } else if (tierHeight == 1440) {
            this.androidAutoSize.n(this.tierList.get(3));
        } else if (tierHeight == 1080) {
            this.androidAutoSize.n(this.tierList.get(2));
        } else if (tierHeight != 720 && tierHeight == 480) {
            this.androidAutoSize.n(this.tierList.get(0));
        } else {
            this.androidAutoSize.n(this.tierList.get(1));
        }

        int aaW = this.androidAutoSize.f1934b;
        int aaH = this.androidAutoSize.f1935c;
        if (aaW > aaH) {
            this.androidAutoDpi = (int) (calculateDpi(aaW, aaH) * 1.2f);    /* was: this.k */
        } else {
            this.androidAutoDpi = calculateDpi(aaW, aaH);
        }
        cn.manstep.phonemirrorBox.util.s.d("VideoSize",
                "setAutoSize: AndroidAuto dpi=" + this.androidAutoDpi
                        + "," + this.androidAutoSize.f1934b
                        + "x" + this.androidAutoSize.f1935c);
    }

    /* ── max size ───────────────────────────────────────────────────── */

    /**
     * Sets the maximum video size and rebuilds tier list + resolution options.
     * was: p(maxW, maxH, defW, defH)
     */
    private VideoSizeManager setMaxWithDefault(int maxW, int maxH, int defW, int defH) {
        cn.manstep.phonemirrorBox.util.s.d("VideoSize",
                "setMax: " + maxW + "x" + maxH + ",def=" + defW + "x" + defH);
        if (maxW == -1) {
            maxW = this.displaySize.f1934b;                                  /* was: this.a.f1934b */
        }
        int finalMaxW = maxW;
        if (maxH > 0 && defH > 0) {
            if (Math.abs((finalMaxW / maxH) - (defW / defH)) < 0.01f) {
                this.defaultSize.m(defW, defH);                              /* was: this.g */
            } else {
                this.defaultSize.m(finalMaxW, maxH);
            }
        }

        cn.manstep.phonemirrorBox.util.x currentMax = this.maxVideoSize;     /* was: this.e */
        if (currentMax.f1934b != finalMaxW || currentMax.f1935c != maxH) {
            this.maxVideoSize.m(finalMaxW, maxH);
            int selectedIdx = buildResolutionOptions(
                    finalMaxW, maxH, defW, defH, this.resolutionOptions);
            buildTierList(this.maxVideoSize);
            setAutoSize(this.currentTierHeight);
            setVideoSizeFromString(this.resolutionOptions.get(selectedIdx)); /* was: s(...) */
        }

        cn.manstep.phonemirrorBox.util.s.d("VideoSize",
                "setMax: videoMaxSize=" + this.maxVideoSize
                        + ",videoSize=" + this.videoSize
                        + ",autoSize=" + this.androidAutoSize);
        return this;
    }

    /* ── public instance methods ────────────────────────────────────── */

    /**
     * Returns the Android Auto DPI for the current tier.
     * was: f()   (instance method on c0)
     */
    public int getAndroidAutoDpi() {
        return this.androidAutoDpi;                                          /* was: this.k */
    }

    /**
     * Calculates an Android Auto size from the given aspect ratio constraints,
     * fitting within the max video size.
     * was: g(videoW, videoH)
     */
    public cn.manstep.phonemirrorBox.util.x calculateAndroidAutoSizeFromAspectRatio(
            int videoW, int videoH) {
        cn.manstep.phonemirrorBox.util.x result = new cn.manstep.phonemirrorBox.util.x();
        result.f1935c = videoH;
        int maxH = this.maxVideoSize.f1935c;                                 /* was: this.e.f1935c */
        int maxW = this.maxVideoSize.f1934b;                                 /* was: this.e.f1934b -- via r2 in decompiled */
        int calculatedW = ((int) (((videoH * 1.0f) * maxW) / maxH)) & 65534;
        result.f1934b = calculatedW;
        if (calculatedW > videoW) {
            result.f1934b = videoW;
            result.f1935c = ((int) (((videoW * 1.0f) * maxH) / maxW)) & 65534;
        }
        return result;
    }

    /**
     * Returns the CarPlay DPI.
     * was: h()
     */
    public int getCarplayDpi() {
        return this.carplayDpi;                                              /* was: this.j */
    }

    /**
     * Re-sets the maximum video size, keeping the existing default size.
     * was: o(w, h)
     */
    public VideoSizeManager setMaxVideoSize(int w, int h) {
        cn.manstep.phonemirrorBox.util.x def = this.defaultSize;             /* was: this.g */
        setMaxWithDefault(w, h, def.f1934b, def.f1935c);
        return this;
    }

    /**
     * Saves the measured max size to preferences and re-sets the max.
     * was: q(w, h)
     */
    public VideoSizeManager setMaxByMeasure(int w, int h) {
        if (w > 0 && h > 0) {
            cn.manstep.phonemirrorBox.util.s.d("VideoSize",
                    "setMaxByMeasure: " + w + "x" + h);
            cn.manstep.phonemirrorBox.b0.i().F("vmaxwh", w + "x" + h);
                    /* was: b0.i().F("vmaxwh", ...) → PreferenceManager.getInstance().putString(...) */
            cn.manstep.phonemirrorBox.util.x def = this.defaultSize;
            setMaxWithDefault(w, h, def.f1934b, def.f1935c);
        }
        return this;
    }

    /**
     * Sets the current CarPlay / HiCar video size if aspect ratio matches
     * the max, or if it is a known special size. Also computes CarPlay DPI.
     * was: r(w, h)
     */
    public void setSize(int w, int h) {
        cn.manstep.phonemirrorBox.util.x max;
        int maxH;
        if (h <= 0 || (maxH = (max = this.maxVideoSize).f1935c) <= 0) {
            return;
        }
        if (Math.abs((w / h) - (max.f1934b / maxH)) < 0.01f
                || isSpecialAspectSize(w, h)) {
            this.defaultSize.m(w, h);                                        /* was: this.g */

            cn.manstep.phonemirrorBox.util.x fixedSize =
                    cn.manstep.phonemirrorBox.u.z().r();
                    /* was: u.z().r() → DeviceConfig.getInstance().getFixedVideoSize() */
            if (fixedSize == null) {
                this.videoSize.m(w, h);                                      /* was: this.f */
            } else {
                this.videoSize.n(fixedSize);
            }
            this.carplayDpi = (int) (calculateDpi(w, h) * 1.2f);            /* was: this.j */
            cn.manstep.phonemirrorBox.util.s.d("VideoSize",
                    "setSize: HiCar dpi=" + this.carplayDpi);
        }
    }

    /**
     * Parses a "WxH" string and delegates to {@link #setSize(int, int)}.
     * was: s(str)
     */
    public void setVideoSizeFromString(String sizeStr) {
        cn.manstep.phonemirrorBox.util.x parsed = cn.manstep.phonemirrorBox.util.x.l(sizeStr);
        setSize(parsed.f1934b, parsed.f1935c);
    }
}
