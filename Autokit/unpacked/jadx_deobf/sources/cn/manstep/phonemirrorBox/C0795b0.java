package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.b0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0795b0 {

    /* JADX INFO: renamed from: g */
    public static String f4732g = "NOT_SUPPORT_IMMERSIVE";

    /* JADX INFO: renamed from: h */
    private static volatile C0795b0 f4733h = null;

    /* JADX INFO: renamed from: i */
    private static int f4734i = -1;

    /* JADX INFO: renamed from: a */
    private WeakReference<Context> f4735a;

    /* JADX INFO: renamed from: b */
    private SharedPreferences f4736b;

    /* JADX INFO: renamed from: c */
    private boolean f4737c = true;

    /* JADX INFO: renamed from: d */
    private boolean f4738d = false;

    /* JADX INFO: renamed from: e */
    private boolean f4739e = true;

    /* JADX INFO: renamed from: f */
    private boolean f4740f = false;

    private C0795b0() {
    }

    /* JADX INFO: renamed from: D */
    public static void m6065D(Context context, boolean z) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putBoolean("HaveMuteFile", z);
        editorEdit.commit();
    }

    /* JADX INFO: renamed from: d */
    public static int m6066d(Context context, String str, int i) {
        return context == null ? i : context.getSharedPreferences("config", 0).getInt(str, i);
    }

    /* JADX INFO: renamed from: e */
    public static boolean m6067e(Context context, int i) {
        if (context == null) {
            return false;
        }
        return context.getSharedPreferences("config", 0).getBoolean("Cmd_" + i + "_b", false);
    }

    /* JADX INFO: renamed from: f */
    public static int m6068f(Context context, int i) {
        if (context == null) {
            return 0;
        }
        return context.getSharedPreferences("config", 0).getInt("KeyCode_" + i, 0);
    }

    /* JADX INFO: renamed from: g */
    public static int m6069g(Context context, int i) {
        if (context == null) {
            return 0;
        }
        return context.getSharedPreferences("config", 0).getInt("KeyCode_" + i + "_LongPress", 0);
    }

    /* JADX INFO: renamed from: h */
    public static boolean m6070h(Context context) {
        if (context == null) {
            return false;
        }
        return context.getSharedPreferences("config", 0).getBoolean("HaveMuteFile", false);
    }

    /* JADX INFO: renamed from: i */
    public static C0795b0 m6071i() {
        if (f4733h == null) {
            synchronized (C0795b0.class) {
                if (f4733h == null) {
                    f4733h = new C0795b0();
                }
            }
        }
        return f4733h;
    }

    /* JADX INFO: renamed from: j */
    public static int m6072j(Context context, int i) {
        if (context == null) {
            return 0;
        }
        return context.getSharedPreferences("config", 0).getInt("Cmd_" + i, 0);
    }

    /* JADX INFO: renamed from: r */
    public static void m6073r(Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putString("BluetoothMac", str);
        editorEdit.commit();
    }

    /* JADX INFO: renamed from: s */
    public static void m6074s(Context context, int i, boolean z) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putBoolean("Cmd_" + i + "_b", z);
        editorEdit.commit();
    }

    /* JADX INFO: renamed from: t */
    public static void m6075t(Context context, int i, int i2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putInt("KeyCode_" + i, i2);
        editorEdit.commit();
    }

    /* JADX INFO: renamed from: u */
    public static void m6076u(Context context, int i, int i2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putInt("KeyCode_" + i + "_LongPress", i2);
        editorEdit.commit();
    }

    /* JADX INFO: renamed from: v */
    public static void m6077v(Context context, int i, int i2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putInt("Cmd_" + i, i2);
        editorEdit.commit();
    }

    /* JADX INFO: renamed from: w */
    public static void m6078w(Context context, int i) {
        if (context == null || f4734i == i) {
            return;
        }
        f4734i = i;
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putInt("WorkMode", i);
        editorEdit.apply();
    }

    /* JADX INFO: renamed from: x */
    public static void m6079x(Context context, String str, int i) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putInt(str, i);
        editorEdit.apply();
    }

    /* JADX INFO: renamed from: y */
    public static void m6080y(Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putString("BluetoothPinCode", str);
        editorEdit.commit();
    }

    /* JADX INFO: renamed from: A */
    public void m6081A(boolean z) {
        this.f4739e = z;
    }

    /* JADX INFO: renamed from: B */
    public void m6082B(boolean z) {
        this.f4737c = z;
    }

    /* JADX INFO: renamed from: C */
    public void m6083C() {
        SharedPreferences sharedPreferences = this.f4736b;
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putInt("KeyCode_88", 1);
            editorEdit.putInt("KeyCode_87", 2);
            editorEdit.putInt("KeyCode_85", 5);
            if (Build.VERSION.SDK_INT >= 21) {
                if (C0953u.m7001z().m7020S()) {
                    editorEdit.putInt("KeyCode_231_LongPress", 8);
                } else {
                    editorEdit.putInt("KeyCode_231", 8);
                }
            }
            editorEdit.putInt("KeyCode_5", 17);
            editorEdit.putInt("KeyCode_6", 18);
            editorEdit.putInt("Cmd_1", 88);
            editorEdit.putInt("Cmd_2", 87);
            editorEdit.putInt("Cmd_5", 85);
            if (Build.VERSION.SDK_INT >= 21) {
                editorEdit.putInt("Cmd_8", 231);
            }
            editorEdit.putInt("Cmd_17", 5);
            editorEdit.putInt("Cmd_18", 6);
            editorEdit.putBoolean("Cmd_1_b", true);
            editorEdit.putBoolean("Cmd_2_b", true);
            editorEdit.putBoolean("Cmd_5_b", true);
            editorEdit.apply();
        }
    }

    /* JADX INFO: renamed from: E */
    public void m6084E(boolean z) {
        this.f4740f = z;
    }

    /* JADX INFO: renamed from: F */
    public void m6085F(String str, Object obj) {
        SharedPreferences sharedPreferences = this.f4736b;
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (obj instanceof Integer) {
                editorEdit.putInt(str, ((Integer) obj).intValue());
            } else if (obj instanceof String) {
                editorEdit.putString(str, (String) obj);
            } else if (obj instanceof Boolean) {
                editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Float) {
                editorEdit.putFloat(str, ((Float) obj).floatValue());
            }
            editorEdit.apply();
        }
    }

    /* JADX INFO: renamed from: a */
    public void m6086a() {
        if (this.f4736b != null) {
            C0982s.m7374d("AutoPlay", "clear AllAudioConfigs");
            SharedPreferences.Editor editorEdit = this.f4736b.edit();
            editorEdit.remove("CallAudioVol");
            editorEdit.remove("VAAudioVol");
            editorEdit.remove("NVAudioVol");
            editorEdit.remove("RingAudioVol");
            editorEdit.remove("CallAudioType");
            editorEdit.remove("VAAudioType");
            editorEdit.remove("NVAudioType");
            editorEdit.remove("RingAudioType");
            editorEdit.remove("LowerAudioAPI");
            editorEdit.remove("RecordChannel");
            editorEdit.remove("RecordSource");
            editorEdit.apply();
        }
    }

    /* JADX INFO: renamed from: b */
    public void m6087b() {
        SharedPreferences sharedPreferences = this.f4736b;
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.clear();
            editorEdit.apply();
        }
    }

    /* JADX INFO: renamed from: c */
    public String m6088c() {
        File[] fileArrListFiles;
        StringBuilder sb = new StringBuilder();
        Context context = this.f4735a.get();
        if (context != null) {
            File file = new File(context.getApplicationInfo().dataDir + "/shared_prefs");
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    String name = file2.getName();
                    if (name.endsWith(".xml")) {
                        String strSubstring = name.substring(0, name.length() - 4);
                        sb.append(strSubstring);
                        sb.append(":\n");
                        for (Map.Entry<String, ?> entry : context.getSharedPreferences(strSubstring, 0).getAll().entrySet()) {
                            sb.append("\t");
                            sb.append(entry.getKey());
                            sb.append(": ");
                            sb.append(entry.getValue());
                            sb.append("\n");
                        }
                    }
                }
            }
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: k */
    public boolean m6089k() {
        return this.f4740f;
    }

    /* JADX INFO: renamed from: l */
    public float m6090l(String str, float f) {
        SharedPreferences sharedPreferences = this.f4736b;
        return sharedPreferences != null ? sharedPreferences.getFloat(str, f) : f;
    }

    /* JADX INFO: renamed from: m */
    public int m6091m(String str, int i) {
        if (this.f4736b == null) {
            return i;
        }
        WeakReference<Context> weakReference = this.f4735a;
        if (weakReference != null && weakReference.get() != null) {
            if ("fps".equals(str)) {
                i = C0953u.m7001z().m7049l(this.f4735a.get().getResources().getInteger(2131361803));
            } else if ("MicGain".equals(str)) {
                C0953u c0953uM7001z = C0953u.m7001z();
                int integer = this.f4735a.get().getResources().getInteger(2131361812);
                c0953uM7001z.m7051m(integer);
                i = integer;
            } else if ("RingAudioVol".equals(str)) {
                i = C0953u.m7001z().m7056q();
            } else if ("VAAudioVol".equals(str)) {
                i = C0953u.m7001z().m7059t();
            } else if ("CallAudioVol".equals(str)) {
                i = C0953u.m7001z().m7045j();
            } else if ("VAAudioType".equals(str)) {
                i = C0953u.m7001z().m7058s();
            } else if ("RingAudioType".equals(str)) {
                i = C0953u.m7001z().m7055p();
            } else if ("CallAudioType".equals(str)) {
                i = C0953u.m7001z().m7041h();
            } else if ("NVAudioType".equals(str)) {
                i = C0953u.m7001z().m7054o();
            } else if ("vandroidautoh".equals(str)) {
                i = C0953u.m7001z().m7037f(this.f4735a.get().getResources().getInteger(2131361793));
            } else if ("BootDelay".equals(str)) {
                i = C0953u.m7001z().m7039g();
            } else if ("MicType".equals(str)) {
                i = C0953u.m7001z().m7053n();
            } else if ("WirelessConnectMode".equals(str)) {
                i = !C0953u.m7001z().m7027Z() ? 1 : 0;
            }
        }
        return this.f4736b.getInt(str, i);
    }

    /* JADX INFO: renamed from: n */
    public String m6092n(String str, String str2) {
        return this.f4736b != null ? "CarPlayOEMIconPath".equals(str) ? this.f4736b.getString(str, str2).replace("CarPlayOEM", "CarLogo").replace("AutoKit_default", "default") : this.f4736b.getString(str, str2) : str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a5  */
    /* JADX INFO: renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m6093o(String str, boolean z) {
        if (this.f4736b == null) {
            return z;
        }
        WeakReference<Context> weakReference = this.f4735a;
        if (weakReference != null && weakReference.get() != null) {
            if ("ShowFloatBall".equals(str)) {
                z = this.f4735a.get().getResources().getBoolean(2131034136);
            } else if (f4732g.equals(str)) {
                z = this.f4735a.get().getResources().getBoolean(2131034114);
            } else if ("AudioTransferMode".equals(str)) {
                z = this.f4735a.get().getResources().getBoolean(2131034121);
                if (!z) {
                    C0953u.m7001z().m7032c0();
                }
            } else if ("IsAutoPlayMusic".equals(str)) {
                z = this.f4735a.get().getResources().getBoolean(2131034122);
            } else if ("IsTextureView".equals(str)) {
                int iM7016O = C0953u.m7001z().m7016O();
                z = iM7016O == 2 ? true : iM7016O == 1 ? false : this.f4735a.get().getResources().getBoolean(2131034138);
            } else if ("InsertPhoneAutoStart".equals(str)) {
                z = this.f4737c;
            } else if ("HideSysNavBar".equals(str)) {
                z = this.f4739e;
            } else if ("InsertBoxAutoStart".equals(str)) {
                z = this.f4735a.get().getResources().getBoolean(2131034123);
            } else if ("BootAutoStart".equals(str)) {
                z = this.f4738d;
            } else if ("IsLeftDrive".equals(str)) {
                if (C0953u.m7001z().m7047k() == 0) {
                }
            } else if ("LowerAudioAPI".equals(str)) {
                z = C0953u.m7001z().m7036e0();
            } else if ("UseBtCall".equals(str)) {
                z = C0953u.m7001z().m7030b0();
            }
        }
        return this.f4736b.getBoolean(str, z);
    }

    /* JADX INFO: renamed from: p */
    public void m6094p(Context context) {
        if (context != null) {
            this.f4736b = context.getSharedPreferences("config", 0);
            this.f4735a = new WeakReference<>(context);
        }
    }

    /* JADX INFO: renamed from: q */
    public void m6095q(String str) {
        SharedPreferences sharedPreferences = this.f4736b;
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove(str);
            editorEdit.apply();
        }
    }

    /* JADX INFO: renamed from: z */
    public void m6096z(String str, String str2) {
        SharedPreferences sharedPreferences = this.f4736b;
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("CarPlayOEMIconName", str);
            editorEdit.putString("CarPlayOEMIconPath", str2);
            editorEdit.apply();
        }
    }
}
