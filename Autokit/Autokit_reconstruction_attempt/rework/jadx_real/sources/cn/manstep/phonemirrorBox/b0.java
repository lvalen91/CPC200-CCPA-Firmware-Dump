package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b0 {
    public static String g = "NOT_SUPPORT_IMMERSIVE";
    private static volatile b0 h = null;
    private static int i = -1;
    private WeakReference<Context> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharedPreferences f1564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1565c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1566d = false;
    private boolean e = true;
    private boolean f = false;

    private b0() {
    }

    public static void D(Context context, boolean z) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putBoolean("HaveMuteFile", z);
        editorEdit.commit();
    }

    public static int d(Context context, String str, int i2) {
        return context == null ? i2 : context.getSharedPreferences("config", 0).getInt(str, i2);
    }

    public static boolean e(Context context, int i2) {
        if (context == null) {
            return false;
        }
        return context.getSharedPreferences("config", 0).getBoolean("Cmd_" + i2 + "_b", false);
    }

    public static int f(Context context, int i2) {
        if (context == null) {
            return 0;
        }
        return context.getSharedPreferences("config", 0).getInt("KeyCode_" + i2, 0);
    }

    public static int g(Context context, int i2) {
        if (context == null) {
            return 0;
        }
        return context.getSharedPreferences("config", 0).getInt("KeyCode_" + i2 + "_LongPress", 0);
    }

    public static boolean h(Context context) {
        if (context == null) {
            return false;
        }
        return context.getSharedPreferences("config", 0).getBoolean("HaveMuteFile", false);
    }

    public static b0 i() {
        if (h == null) {
            synchronized (b0.class) {
                if (h == null) {
                    h = new b0();
                }
            }
        }
        return h;
    }

    public static int j(Context context, int i2) {
        if (context == null) {
            return 0;
        }
        return context.getSharedPreferences("config", 0).getInt("Cmd_" + i2, 0);
    }

    public static void r(Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putString("BluetoothMac", str);
        editorEdit.commit();
    }

    public static void s(Context context, int i2, boolean z) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putBoolean("Cmd_" + i2 + "_b", z);
        editorEdit.commit();
    }

    public static void t(Context context, int i2, int i3) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putInt("KeyCode_" + i2, i3);
        editorEdit.commit();
    }

    public static void u(Context context, int i2, int i3) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putInt("KeyCode_" + i2 + "_LongPress", i3);
        editorEdit.commit();
    }

    public static void v(Context context, int i2, int i3) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putInt("Cmd_" + i2, i3);
        editorEdit.commit();
    }

    public static void w(Context context, int i2) {
        if (context == null || i == i2) {
            return;
        }
        i = i2;
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putInt("WorkMode", i2);
        editorEdit.apply();
    }

    public static void x(Context context, String str, int i2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putInt(str, i2);
        editorEdit.apply();
    }

    public static void y(Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("config", 0).edit();
        editorEdit.putString("BluetoothPinCode", str);
        editorEdit.commit();
    }

    public void A(boolean z) {
        this.e = z;
    }

    public void B(boolean z) {
        this.f1565c = z;
    }

    public void C() {
        SharedPreferences sharedPreferences = this.f1564b;
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putInt("KeyCode_88", 1);
            editorEdit.putInt("KeyCode_87", 2);
            editorEdit.putInt("KeyCode_85", 5);
            if (Build.VERSION.SDK_INT >= 21) {
                if (u.z().S()) {
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

    public void E(boolean z) {
        this.f = z;
    }

    public void F(String str, Object obj) {
        SharedPreferences sharedPreferences = this.f1564b;
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

    public void a() {
        if (this.f1564b != null) {
            cn.manstep.phonemirrorBox.util.s.d("AutoPlay", "clear AllAudioConfigs");
            SharedPreferences.Editor editorEdit = this.f1564b.edit();
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

    public void b() {
        SharedPreferences sharedPreferences = this.f1564b;
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.clear();
            editorEdit.apply();
        }
    }

    public String c() {
        File[] fileArrListFiles;
        StringBuilder sb = new StringBuilder();
        Context context = this.a.get();
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

    public boolean k() {
        return this.f;
    }

    public float l(String str, float f) {
        SharedPreferences sharedPreferences = this.f1564b;
        return sharedPreferences != null ? sharedPreferences.getFloat(str, f) : f;
    }

    public int m(String str, int i2) {
        if (this.f1564b == null) {
            return i2;
        }
        WeakReference<Context> weakReference = this.a;
        if (weakReference != null && weakReference.get() != null) {
            if ("fps".equals(str)) {
                i2 = u.z().l(this.a.get().getResources().getInteger(2131361803));
            } else if ("MicGain".equals(str)) {
                u uVarZ = u.z();
                int integer = this.a.get().getResources().getInteger(2131361812);
                uVarZ.m(integer);
                i2 = integer;
            } else if ("RingAudioVol".equals(str)) {
                i2 = u.z().q();
            } else if ("VAAudioVol".equals(str)) {
                i2 = u.z().t();
            } else if ("CallAudioVol".equals(str)) {
                i2 = u.z().j();
            } else if ("VAAudioType".equals(str)) {
                i2 = u.z().s();
            } else if ("RingAudioType".equals(str)) {
                i2 = u.z().p();
            } else if ("CallAudioType".equals(str)) {
                i2 = u.z().h();
            } else if ("NVAudioType".equals(str)) {
                i2 = u.z().o();
            } else if ("vandroidautoh".equals(str)) {
                i2 = u.z().f(this.a.get().getResources().getInteger(2131361793));
            } else if ("BootDelay".equals(str)) {
                i2 = u.z().g();
            } else if ("MicType".equals(str)) {
                i2 = u.z().n();
            } else if ("WirelessConnectMode".equals(str)) {
                i2 = !u.z().Z() ? 1 : 0;
            }
        }
        return this.f1564b.getInt(str, i2);
    }

    public String n(String str, String str2) {
        return this.f1564b != null ? "CarPlayOEMIconPath".equals(str) ? this.f1564b.getString(str, str2).replace("CarPlayOEM", "CarLogo").replace("AutoKit_default", "default") : this.f1564b.getString(str, str2) : str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean o(String str, boolean z) {
        if (this.f1564b == null) {
            return z;
        }
        WeakReference<Context> weakReference = this.a;
        if (weakReference != null && weakReference.get() != null) {
            if ("ShowFloatBall".equals(str)) {
                z = this.a.get().getResources().getBoolean(2131034136);
            } else if (g.equals(str)) {
                z = this.a.get().getResources().getBoolean(2131034114);
            } else if ("AudioTransferMode".equals(str)) {
                z = this.a.get().getResources().getBoolean(2131034121);
                if (!z) {
                    u.z().c0();
                }
            } else if ("IsAutoPlayMusic".equals(str)) {
                z = this.a.get().getResources().getBoolean(2131034122);
            } else if ("IsTextureView".equals(str)) {
                int iO = u.z().O();
                z = iO == 2 ? true : iO == 1 ? false : this.a.get().getResources().getBoolean(2131034138);
            } else if ("InsertPhoneAutoStart".equals(str)) {
                z = this.f1565c;
            } else if ("HideSysNavBar".equals(str)) {
                z = this.e;
            } else if ("InsertBoxAutoStart".equals(str)) {
                z = this.a.get().getResources().getBoolean(2131034123);
            } else if ("BootAutoStart".equals(str)) {
                z = this.f1566d;
            } else if ("IsLeftDrive".equals(str)) {
                if (u.z().k() == 0) {
                }
            } else if ("LowerAudioAPI".equals(str)) {
                z = u.z().e0();
            } else if ("UseBtCall".equals(str)) {
                z = u.z().b0();
            }
        }
        return this.f1564b.getBoolean(str, z);
    }

    public void p(Context context) {
        if (context != null) {
            this.f1564b = context.getSharedPreferences("config", 0);
            this.a = new WeakReference<>(context);
        }
    }

    public void q(String str) {
        SharedPreferences sharedPreferences = this.f1564b;
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove(str);
            editorEdit.apply();
        }
    }

    public void z(String str, String str2) {
        SharedPreferences sharedPreferences = this.f1564b;
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("CarPlayOEMIconName", str);
            editorEdit.putString("CarPlayOEMIconPath", str2);
            editorEdit.apply();
        }
    }
}
