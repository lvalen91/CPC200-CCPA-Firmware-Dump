package cn.manstep.autokit.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;

/**
 * PreferenceManager -- Singleton wrapper around Android SharedPreferences
 * ("config" file). Provides typed get/put methods with device-specific
 * default overrides fetched from {@link DeviceConfig}.
 *
 * Key preference keys used throughout AutoKit:
 *   "vandroidautoh"  -- Android Auto tier height (480/720/1080/1440)
 *   "ImageScale"     -- 0 = stretch, 1 = fit
 *   "vmaxwh"         -- max video "WxH" string
 *   "mediaDelay"     -- media playback delay
 *   "RecordDelay"    -- microphone record delay
 *   "WorkMode"       -- active work mode
 *   "BluetoothMac"   -- paired BT MAC
 *   "BluetoothPinCode" -- BT pairing PIN
 *   "fps"            -- frame rate override
 *
 * Deobfuscated from: cn.manstep.phonemirrorBox.b0
 */
public class PreferenceManager {

    /** Preference key for immersive-mode support flag. */
    public static String NOT_SUPPORT_IMMERSIVE = "NOT_SUPPORT_IMMERSIVE";    /* was: 'g' */

    /** Singleton instance. */
    private static volatile PreferenceManager instance = null;               /* was: 'h' */

    /** Cached work-mode value (-1 = not yet read). */
    private static int cachedWorkMode = -1;                                  /* was: 'i' (static) */

    /** Weak reference to the application context. */
    private WeakReference<Context> contextRef;                               /* was: 'a' */

    /** SharedPreferences handle ("config", MODE_PRIVATE). */
    private SharedPreferences prefs;                                         /* was: 'f1564b' */

    /** Default value for "InsertPhoneAutoStart" preference. */
    private boolean defaultInsertPhoneAutoStart = true;                      /* was: 'f1565c' */

    /** Default value for "BootAutoStart" preference. */
    private boolean defaultBootAutoStart = false;                            /* was: 'f1566d' */

    /** Default value for "HideSysNavBar" preference. */
    private boolean defaultHideSysNavBar = true;                             /* was: 'e' */

    /** Flag 'f' -- set by E(); used in k(). Purpose: custom-layout related. */
    private boolean flagF = false;                                           /* was: 'f' */

    /* ── constructor ────────────────────────────────────────────────── */

    private PreferenceManager() {
    }

    /* ── singleton ──────────────────────────────────────────────────── */

    /**
     * Returns the singleton instance.
     * was: i()
     */
    public static PreferenceManager getInstance() {
        if (instance == null) {
            synchronized (PreferenceManager.class) {
                if (instance == null) {
                    instance = new PreferenceManager();
                }
            }
        }
        return instance;
    }

    /* ── static context-based helpers ───────────────────────────────── */

    /**
     * Writes the "HaveMuteFile" boolean to preferences.
     * was: D(context, value)
     */
    public static void setHaveMuteFile(Context context, boolean value) {
        if (context == null) return;
        SharedPreferences.Editor editor = context.getSharedPreferences("config", 0).edit();
        editor.putBoolean("HaveMuteFile", value);
        editor.commit();
    }

    /**
     * Reads an integer preference from the given context.
     * was: d(context, key, default)
     */
    public static int getIntFromContext(Context context, String key, int defValue) {
        return context == null ? defValue
                : context.getSharedPreferences("config", 0).getInt(key, defValue);
    }

    /**
     * Reads a per-command boolean ("Cmd_N_b").
     * was: e(context, cmdId)
     */
    public static boolean getCommandEnabled(Context context, int cmdId) {
        if (context == null) return false;
        return context.getSharedPreferences("config", 0)
                .getBoolean("Cmd_" + cmdId + "_b", false);
    }

    /**
     * Reads a per-key key-code mapping ("KeyCode_N").
     * was: f(context, keyId)
     */
    public static int getKeyCode(Context context, int keyId) {
        if (context == null) return 0;
        return context.getSharedPreferences("config", 0)
                .getInt("KeyCode_" + keyId, 0);
    }

    /**
     * Reads a per-key long-press key-code mapping ("KeyCode_N_LongPress").
     * was: g(context, keyId)
     */
    public static int getLongPressKeyCode(Context context, int keyId) {
        if (context == null) return 0;
        return context.getSharedPreferences("config", 0)
                .getInt("KeyCode_" + keyId + "_LongPress", 0);
    }

    /**
     * Reads the "HaveMuteFile" boolean.
     * was: h(context)
     */
    public static boolean getHaveMuteFile(Context context) {
        if (context == null) return false;
        return context.getSharedPreferences("config", 0)
                .getBoolean("HaveMuteFile", false);
    }

    /**
     * Reads a per-command integer ("Cmd_N").
     * was: j(context, cmdId)
     */
    public static int getCommand(Context context, int cmdId) {
        if (context == null) return 0;
        return context.getSharedPreferences("config", 0)
                .getInt("Cmd_" + cmdId, 0);
    }

    /**
     * Stores a Bluetooth MAC address.
     * was: r(context, mac)
     */
    public static void setBluetoothMac(Context context, String mac) {
        SharedPreferences.Editor editor = context.getSharedPreferences("config", 0).edit();
        editor.putString("BluetoothMac", mac);
        editor.commit();
    }

    /**
     * Sets a per-command boolean.
     * was: s(context, cmdId, value)
     */
    public static void setCommandEnabled(Context context, int cmdId, boolean value) {
        SharedPreferences.Editor editor = context.getSharedPreferences("config", 0).edit();
        editor.putBoolean("Cmd_" + cmdId + "_b", value);
        editor.commit();
    }

    /**
     * Sets a per-key key-code mapping.
     * was: t(context, keyId, keyCode)
     */
    public static void setKeyCode(Context context, int keyId, int keyCode) {
        SharedPreferences.Editor editor = context.getSharedPreferences("config", 0).edit();
        editor.putInt("KeyCode_" + keyId, keyCode);
        editor.commit();
    }

    /**
     * Sets a per-key long-press key-code mapping.
     * was: u(context, keyId, keyCode)
     */
    public static void setLongPressKeyCode(Context context, int keyId, int keyCode) {
        SharedPreferences.Editor editor = context.getSharedPreferences("config", 0).edit();
        editor.putInt("KeyCode_" + keyId + "_LongPress", keyCode);
        editor.commit();
    }

    /**
     * Sets a per-command integer.
     * was: v(context, cmdId, value)
     */
    public static void setCommand(Context context, int cmdId, int value) {
        SharedPreferences.Editor editor = context.getSharedPreferences("config", 0).edit();
        editor.putInt("Cmd_" + cmdId, value);
        editor.commit();
    }

    /**
     * Writes the "WorkMode" preference and caches the value.
     * was: w(context, mode)
     */
    public static void setWorkMode(Context context, int mode) {
        if (context == null || cachedWorkMode == mode) return;
        cachedWorkMode = mode;
        SharedPreferences.Editor editor = context.getSharedPreferences("config", 0).edit();
        editor.putInt("WorkMode", mode);
        editor.apply();
    }

    /**
     * Writes an arbitrary integer preference on the given context.
     * was: x(context, key, value)
     */
    public static void putIntOnContext(Context context, String key, int value) {
        SharedPreferences.Editor editor = context.getSharedPreferences("config", 0).edit();
        editor.putInt(key, value);
        editor.apply();
    }

    /**
     * Stores a Bluetooth PIN code.
     * was: y(context, pin)
     */
    public static void setBluetoothPinCode(Context context, String pin) {
        SharedPreferences.Editor editor = context.getSharedPreferences("config", 0).edit();
        editor.putString("BluetoothPinCode", pin);
        editor.commit();
    }

    /* ── instance methods ───────────────────────────────────────────── */

    /**
     * Sets the "HideSysNavBar" default.
     * was: A(value)
     */
    public void setDefaultHideSysNavBar(boolean value) {
        this.defaultHideSysNavBar = value;                                   /* was: this.e = z */
    }

    /**
     * Sets the "InsertPhoneAutoStart" default.
     * was: B(value)
     */
    public void setDefaultInsertPhoneAutoStart(boolean value) {
        this.defaultInsertPhoneAutoStart = value;                            /* was: this.f1565c = z */
    }

    /**
     * Writes default key-code and command mappings (Play/Pause, Next, Prev,
     * Siri/Assistant, Volume) to preferences.
     * was: C()
     */
    public void writeDefaultKeyMappings() {
        if (this.prefs != null) {
            SharedPreferences.Editor editor = this.prefs.edit();
            editor.putInt("KeyCode_88", 1);   /* KEYCODE_MEDIA_PREVIOUS → cmd 1 */
            editor.putInt("KeyCode_87", 2);   /* KEYCODE_MEDIA_NEXT → cmd 2 */
            editor.putInt("KeyCode_85", 5);   /* KEYCODE_MEDIA_PLAY_PAUSE → cmd 5 */
            if (Build.VERSION.SDK_INT >= 21) {
                if (DeviceConfig.getInstance().isChangan()) {
                    /* was: u.z().S() → DeviceConfig.getInstance().isChangan() */
                    editor.putInt("KeyCode_231_LongPress", 8);
                } else {
                    editor.putInt("KeyCode_231", 8);  /* KEYCODE_ASSIST → cmd 8 (Siri) */
                }
            }
            editor.putInt("KeyCode_5", 17);   /* KEYCODE_CALL → cmd 17 */
            editor.putInt("KeyCode_6", 18);   /* KEYCODE_ENDCALL → cmd 18 */
            editor.putInt("Cmd_1", 88);
            editor.putInt("Cmd_2", 87);
            editor.putInt("Cmd_5", 85);
            if (Build.VERSION.SDK_INT >= 21) {
                editor.putInt("Cmd_8", 231);
            }
            editor.putInt("Cmd_17", 5);
            editor.putInt("Cmd_18", 6);
            editor.putBoolean("Cmd_1_b", true);
            editor.putBoolean("Cmd_2_b", true);
            editor.putBoolean("Cmd_5_b", true);
            editor.apply();
        }
    }

    /**
     * Sets the flagF field (used by {@link #getFlagF()}).
     * was: E(value)
     */
    public void setFlagF(boolean value) {
        this.flagF = value;                                                  /* was: this.f = z */
    }

    /**
     * Writes a typed value (Integer, String, Boolean, or Float) to preferences.
     * was: F(key, value)
     */
    public void putString(String key, Object value) {
        if (this.prefs != null) {
            SharedPreferences.Editor editor = this.prefs.edit();
            if (value instanceof Integer) {
                editor.putInt(key, ((Integer) value).intValue());
            } else if (value instanceof String) {
                editor.putString(key, (String) value);
            } else if (value instanceof Boolean) {
                editor.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value instanceof Float) {
                editor.putFloat(key, ((Float) value).floatValue());
            }
            editor.apply();
        }
    }

    /**
     * Clears all audio-related preferences.
     * was: a()
     */
    public void clearAllAudioConfigs() {
        if (this.prefs != null) {
            cn.manstep.phonemirrorBox.util.s.d("AutoPlay", "clear AllAudioConfigs");
            SharedPreferences.Editor editor = this.prefs.edit();
            editor.remove("CallAudioVol");
            editor.remove("VAAudioVol");
            editor.remove("NVAudioVol");
            editor.remove("RingAudioVol");
            editor.remove("CallAudioType");
            editor.remove("VAAudioType");
            editor.remove("NVAudioType");
            editor.remove("RingAudioType");
            editor.remove("LowerAudioAPI");
            editor.remove("RecordChannel");
            editor.remove("RecordSource");
            editor.apply();
        }
    }

    /**
     * Clears all preferences.
     * was: b()
     */
    public void clearAll() {
        if (this.prefs != null) {
            SharedPreferences.Editor editor = this.prefs.edit();
            editor.clear();
            editor.apply();
        }
    }

    /**
     * Dumps all SharedPreferences XML files and their contents to a string.
     * was: c()
     */
    public String dumpAllPreferences() {
        File[] files;
        StringBuilder sb = new StringBuilder();
        Context context = this.contextRef.get();
        if (context != null) {
            File prefsDir = new File(context.getApplicationInfo().dataDir + "/shared_prefs");
            if (prefsDir.exists() && prefsDir.isDirectory()
                    && (files = prefsDir.listFiles()) != null) {
                for (File file : files) {
                    String name = file.getName();
                    if (name.endsWith(".xml")) {
                        String prefsName = name.substring(0, name.length() - 4);
                        sb.append(prefsName).append(":\n");
                        for (Map.Entry<String, ?> entry
                                : context.getSharedPreferences(prefsName, 0)
                                .getAll().entrySet()) {
                            sb.append("\t").append(entry.getKey())
                              .append(": ").append(entry.getValue()).append("\n");
                        }
                    }
                }
            }
        }
        return sb.toString();
    }

    /**
     * Returns the flagF value.
     * was: k()
     */
    public boolean getFlagF() {
        return this.flagF;                                                   /* was: this.f */
    }

    /**
     * Reads a float preference.
     * was: l(key, default)
     */
    public float getFloat(String key, float defValue) {
        return this.prefs != null ? this.prefs.getFloat(key, defValue) : defValue;
    }

    /**
     * Reads an integer preference with device-specific default overrides.
     * For certain keys (fps, MicGain, audio volumes/types, vandroidautoh,
     * BootDelay, MicType, WirelessConnectMode), the default is dynamically
     * fetched from {@link DeviceConfig}.
     * was: m(key, default)
     */
    public int getInt(String key, int defValue) {
        if (this.prefs == null) {
            return defValue;
        }
        WeakReference<Context> ref = this.contextRef;
        if (ref != null && ref.get() != null) {
            if ("fps".equals(key)) {
                defValue = DeviceConfig.getInstance().overrideFrameRate(
                        this.contextRef.get().getResources().getInteger(2131361803));
                        /* was: u.z().l(...) → DeviceConfig.getInstance().overrideFrameRate(...) */
            } else if ("MicGain".equals(key)) {
                DeviceConfig dc = DeviceConfig.getInstance();
                int resDefault = this.contextRef.get().getResources().getInteger(2131361812);
                dc.overrideMicGain(resDefault);
                        /* was: u.z().m(integer) → DeviceConfig.getInstance().overrideMicGain(...) */
                defValue = resDefault;
            } else if ("RingAudioVol".equals(key)) {
                defValue = DeviceConfig.getInstance().getRingAudioVolume();
                        /* was: u.z().q() */
            } else if ("VAAudioVol".equals(key)) {
                defValue = DeviceConfig.getInstance().getVoiceAssistantAudioVolume();
                        /* was: u.z().t() */
            } else if ("CallAudioVol".equals(key)) {
                defValue = DeviceConfig.getInstance().getCallAudioVolume();
                        /* was: u.z().j() */
            } else if ("VAAudioType".equals(key)) {
                defValue = DeviceConfig.getInstance().getVoiceAssistantAudioType();
                        /* was: u.z().s() */
            } else if ("RingAudioType".equals(key)) {
                defValue = DeviceConfig.getInstance().getRingAudioType();
                        /* was: u.z().p() */
            } else if ("CallAudioType".equals(key)) {
                defValue = DeviceConfig.getInstance().getCallAudioType();
                        /* was: u.z().h() */
            } else if ("NVAudioType".equals(key)) {
                defValue = DeviceConfig.getInstance().getNavAudioType();
                        /* was: u.z().o() */
            } else if ("vandroidautoh".equals(key)) {
                defValue = DeviceConfig.getInstance().overrideTierHeight(
                        this.contextRef.get().getResources().getInteger(2131361793));
                        /* was: u.z().f(...) → DeviceConfig.getInstance().overrideTierHeight(...) */
            } else if ("BootDelay".equals(key)) {
                defValue = DeviceConfig.getInstance().getBootDelay();
                        /* was: u.z().g() */
            } else if ("MicType".equals(key)) {
                defValue = DeviceConfig.getInstance().getMicTypeOverride();
                        /* was: u.z().n() */
            } else if ("WirelessConnectMode".equals(key)) {
                defValue = !DeviceConfig.getInstance().isWirelessConnectSupported() ? 1 : 0;
                        /* was: u.z().Z() */
            }
        }
        return this.prefs.getInt(key, defValue);
    }

    /**
     * Reads a string preference. Applies a path migration for
     * "CarPlayOEMIconPath" (replaces "CarPlayOEM" with "CarLogo" and
     * "AutoKit_default" with "default").
     * was: n(key, default)
     */
    public String getString(String key, String defValue) {
        if (this.prefs == null) return defValue;
        if ("CarPlayOEMIconPath".equals(key)) {
            return this.prefs.getString(key, defValue)
                    .replace("CarPlayOEM", "CarLogo")
                    .replace("AutoKit_default", "default");
        }
        return this.prefs.getString(key, defValue);
    }

    /**
     * Reads a boolean preference with device-specific default overrides.
     * was: o(key, default)
     */
    public boolean getBoolean(String key, boolean defValue) {
        if (this.prefs == null) {
            return defValue;
        }
        WeakReference<Context> ref = this.contextRef;
        if (ref != null && ref.get() != null) {
            if ("ShowFloatBall".equals(key)) {
                defValue = this.contextRef.get().getResources().getBoolean(2131034136);
            } else if (NOT_SUPPORT_IMMERSIVE.equals(key)) {
                defValue = this.contextRef.get().getResources().getBoolean(2131034114);
            } else if ("AudioTransferMode".equals(key)) {
                defValue = this.contextRef.get().getResources().getBoolean(2131034121);
                if (!defValue) {
                    DeviceConfig.getInstance().isRenesasC100AudioTransfer();
                            /* was: u.z().c0() */
                }
            } else if ("IsAutoPlayMusic".equals(key)) {
                defValue = this.contextRef.get().getResources().getBoolean(2131034122);
            } else if ("IsTextureView".equals(key)) {
                int override = DeviceConfig.getInstance().getTextureViewOverride();
                        /* was: u.z().O() */
                defValue = override == 2 ? true
                        : override == 1 ? false
                        : this.contextRef.get().getResources().getBoolean(2131034138);
            } else if ("InsertPhoneAutoStart".equals(key)) {
                defValue = this.defaultInsertPhoneAutoStart;                 /* was: this.f1565c */
            } else if ("HideSysNavBar".equals(key)) {
                defValue = this.defaultHideSysNavBar;                        /* was: this.e */
            } else if ("InsertBoxAutoStart".equals(key)) {
                defValue = this.contextRef.get().getResources().getBoolean(2131034123);
            } else if ("BootAutoStart".equals(key)) {
                defValue = this.defaultBootAutoStart;                        /* was: this.f1566d */
            } else if ("IsLeftDrive".equals(key)) {
                if (DeviceConfig.getInstance().getDriveMode() == 0) {
                    /* was: u.z().k() → DeviceConfig.getInstance().getDriveMode() */
                    /* JADX WARN: removed duplicated region -- condition incomplete */
                }
            } else if ("LowerAudioAPI".equals(key)) {
                defValue = DeviceConfig.getInstance().useLowerAudioApi();
                        /* was: u.z().e0() */
            } else if ("UseBtCall".equals(key)) {
                defValue = DeviceConfig.getInstance().useBtCall();
                        /* was: u.z().b0() */
            }
        }
        return this.prefs.getBoolean(key, defValue);
    }

    /**
     * Initialises the preferences from the given context.
     * was: p(context)
     */
    public void init(Context context) {
        if (context != null) {
            this.prefs = context.getSharedPreferences("config", 0);
            this.contextRef = new WeakReference<>(context);
        }
    }

    /**
     * Removes a single preference key.
     * was: q(key)
     */
    public void remove(String key) {
        if (this.prefs != null) {
            SharedPreferences.Editor editor = this.prefs.edit();
            editor.remove(key);
            editor.apply();
        }
    }

    /**
     * Stores CarPlay OEM icon name and path.
     * was: z(name, path)
     */
    public void setCarPlayOemIcon(String name, String path) {
        if (this.prefs != null) {
            SharedPreferences.Editor editor = this.prefs.edit();
            editor.putString("CarPlayOEMIconName", name);
            editor.putString("CarPlayOEMIconPath", path);
            editor.apply();
        }
    }
}
