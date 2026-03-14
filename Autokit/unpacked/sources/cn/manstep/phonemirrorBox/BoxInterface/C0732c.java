package cn.manstep.phonemirrorBox.BoxInterface;

import android.text.TextUtils;
import cn.manstep.phonemirrorBox.p073g0.C0849d;
import com.yalantis.ucrop.BuildConfig;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0732c {

    /* JADX INFO: renamed from: w */
    private static final Map<String, String> f4403w;

    /* JADX INFO: renamed from: x */
    private static volatile C0732c f4404x;

    /* JADX INFO: renamed from: f */
    private String f4410f;

    /* JADX INFO: renamed from: g */
    private String f4411g;

    /* JADX INFO: renamed from: i */
    private String f4413i;

    /* JADX INFO: renamed from: j */
    private String f4414j;

    /* JADX INFO: renamed from: k */
    private String f4415k;

    /* JADX INFO: renamed from: l */
    private String f4416l;

    /* JADX INFO: renamed from: m */
    private String f4417m;

    /* JADX INFO: renamed from: n */
    private int f4418n;

    /* JADX INFO: renamed from: o */
    private String f4419o;

    /* JADX INFO: renamed from: p */
    private int f4420p;

    /* JADX INFO: renamed from: q */
    private int f4421q;

    /* JADX INFO: renamed from: r */
    private int f4422r;

    /* JADX INFO: renamed from: s */
    private String f4423s;

    /* JADX INFO: renamed from: t */
    private String f4424t;

    /* JADX INFO: renamed from: u */
    private String f4425u;

    /* JADX INFO: renamed from: a */
    private String f4405a = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: b */
    private String f4406b = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: c */
    private String f4407c = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: d */
    private String f4408d = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: e */
    private int f4409e = 0;

    /* JADX INFO: renamed from: h */
    private boolean f4412h = false;

    /* JADX INFO: renamed from: v */
    private Map<String, C0849d> f4426v = new ConcurrentHashMap();

    static {
        HashMap map = new HashMap();
        f4403w = map;
        map.put("iPhone5,1", "iPhone 5 (GSM)");
        f4403w.put("iPhone5,2", "iPhone 5 (GSM+CDMA)");
        f4403w.put("iPhone5,3", "iPhone 5C (GSM)");
        f4403w.put("iPhone5,4", "iPhone 5C (Global)");
        f4403w.put("iPhone6,1", "iPhone 5S (GSM)");
        f4403w.put("iPhone6,2", "iPhone 5S (Global)");
        f4403w.put("iPhone7,1", "iPhone 6 Plus");
        f4403w.put("iPhone7,2", "iPhone 6");
        f4403w.put("iPhone8,1", "iPhone 6s");
        f4403w.put("iPhone8,2", "iPhone 6s Plus");
        f4403w.put("iPhone8,4", "iPhone SE (GSM)");
        f4403w.put("iPhone9,1", "iPhone 7");
        f4403w.put("iPhone9,2", "iPhone 7 Plus");
        f4403w.put("iPhone9,3", "iPhone 7");
        f4403w.put("iPhone9,4", "iPhone 7 Plus");
        f4403w.put("iPhone10,1", "iPhone 8");
        f4403w.put("iPhone10,2", "iPhone 8 Plus");
        f4403w.put("iPhone10,3", "iPhone X Global");
        f4403w.put("iPhone10,4", "iPhone 8");
        f4403w.put("iPhone10,5", "iPhone 8 Plus");
        f4403w.put("iPhone10,6", "iPhone X GSM");
        f4403w.put("iPhone11,2", "iPhone XS");
        f4403w.put("iPhone11,4", "iPhone XS Max");
        f4403w.put("iPhone11,6", "iPhone XS Max Global");
        f4403w.put("iPhone11,8", "iPhone XR");
        f4403w.put("iPhone12,1", "iPhone 11");
        f4403w.put("iPhone12,3", "iPhone 11 Pro");
        f4403w.put("iPhone12,5", "iPhone 11 Pro Max");
        f4403w.put("iPhone12,8", "iPhone SE 2nd Gen");
        f4403w.put("iPhone13,1", "iPhone 12 Mini");
        f4403w.put("iPhone13,2", "iPhone 12");
        f4403w.put("iPhone13,3", "iPhone 12 Pro");
        f4403w.put("iPhone13,4", "iPhone 12 Pro Max");
        f4403w.put("iPhone14,2", "iPhone 13 Pro");
        f4403w.put("iPhone14,3", "iPhone 13 Pro Max");
        f4403w.put("iPhone14,4", "iPhone 13 Mini");
        f4403w.put("iPhone14,5", "iPhone 13");
        f4403w.put("iPhone14,6", "iPhone SE 3rd Gen");
        f4403w.put("iPhone14,7", "iPhone 14");
        f4403w.put("iPhone14,8", "iPhone 14 Plus");
        f4403w.put("iPhone15,2", "iPhone 14 Pro");
        f4403w.put("iPhone15,3", "iPhone 14 Pro Max");
        f4403w.put("iPhone15,4", "iPhone 15");
        f4403w.put("iPhone15,5", "iPhone 15 Plus");
        f4403w.put("iPhone16,1", "iPhone 15 Pro");
        f4403w.put("iPhone16,2", "iPhone 15 Pro Max");
        f4403w.put("iPhone17,1", "iPhone 16 Pro");
        f4403w.put("iPhone17,2", "iPhone 16 Pro Max");
        f4403w.put("iPhone17,3", "iPhone 16");
        f4403w.put("iPhone17,4", "iPhone 16 Plus");
    }

    private C0732c() {
        m5563u();
    }

    /* JADX INFO: renamed from: e */
    public static C0732c m5542e() {
        if (f4404x == null) {
            synchronized (C0732c.class) {
                if (f4404x == null) {
                    f4404x = new C0732c();
                }
            }
        }
        return f4404x;
    }

    /* JADX INFO: renamed from: A */
    public void m5543A(boolean z) {
        this.f4409e = z ? 1 : 0;
    }

    /* JADX INFO: renamed from: a */
    public String m5544a() {
        return this.f4409e + BuildConfig.FLAVOR + this.f4412h + "\n" + String.format(Locale.CHINA, "0x%04X0x%04X", Integer.valueOf(this.f4421q), Integer.valueOf(this.f4422r)) + "\n" + this.f4407c.replace(".", BuildConfig.FLAVOR) + this.f4411g + "\n" + this.f4406b + this.f4410f + "\n" + this.f4405a;
    }

    /* JADX INFO: renamed from: b */
    public int m5545b() {
        return this.f4418n;
    }

    /* JADX INFO: renamed from: c */
    public String m5546c() {
        return this.f4408d;
    }

    /* JADX INFO: renamed from: d */
    public String m5547d() {
        return this.f4413i;
    }

    /* JADX INFO: renamed from: f */
    public String m5548f() {
        return this.f4414j;
    }

    /* JADX INFO: renamed from: g */
    public String m5549g() {
        return this.f4417m;
    }

    /* JADX INFO: renamed from: h */
    public String m5550h() {
        return this.f4406b;
    }

    /* JADX INFO: renamed from: i */
    public String m5551i() {
        return this.f4410f;
    }

    /* JADX INFO: renamed from: j */
    public String m5552j() {
        return this.f4415k;
    }

    /* JADX INFO: renamed from: k */
    public String m5553k() {
        return this.f4424t;
    }

    /* JADX INFO: renamed from: l */
    public String m5554l() {
        return this.f4416l;
    }

    /* JADX INFO: renamed from: m */
    public String m5555m() {
        return this.f4411g;
    }

    /* JADX INFO: renamed from: n */
    public String m5556n() {
        return this.f4423s.replace("\n", BuildConfig.FLAVOR);
    }

    /* JADX INFO: renamed from: o */
    public String m5557o() {
        return this.f4405a;
    }

    /* JADX INFO: renamed from: p */
    public String m5558p() {
        return this.f4407c;
    }

    /* JADX INFO: renamed from: q */
    public String m5559q() {
        return String.format(Locale.CHINA, "%d(0x%04X),%d(0x%04X)", Integer.valueOf(this.f4421q), Integer.valueOf(this.f4421q), Integer.valueOf(this.f4422r), Integer.valueOf(this.f4422r));
    }

    /* JADX INFO: renamed from: r */
    public int m5560r() {
        return this.f4420p;
    }

    /* JADX INFO: renamed from: s */
    public String m5561s() {
        return this.f4425u;
    }

    /* JADX INFO: renamed from: t */
    public boolean m5562t(int i, int[] iArr) {
        if (i <= 0 || this.f4422r <= 0) {
            return false;
        }
        for (int i2 : iArr) {
            if (this.f4422r == i2) {
                return false;
            }
        }
        return this.f4422r != i;
    }

    public String toString() {
        return "BoxInfo{uuid='" + this.f4405a + "', mfd='" + this.f4406b + "', ver='" + this.f4407c + "', fwName='" + this.f4408d + "', wifi=" + this.f4409e + ", model='" + this.f4410f + "', type='" + this.f4411g + "', isSupportHiCar=" + this.f4412h + ", hwVersion='" + this.f4413i + "', linkType='" + this.f4414j + "', phoneModel='" + this.f4415k + "', phoneOsVersion='" + this.f4416l + "', linkVersion='" + this.f4417m + "', cpuTemp=" + this.f4418n + ", oemName='" + this.f4419o + "', wiFiChannel=" + this.f4420p + ", vid=" + this.f4421q + ", pid=" + this.f4422r + ", userCode='" + this.f4423s + "', phoneName='" + this.f4424t + "', wifiChannelList='" + this.f4425u + "'}";
    }

    /* JADX INFO: renamed from: u */
    public void m5563u() {
        this.f4405a = BuildConfig.FLAVOR;
        this.f4406b = BuildConfig.FLAVOR;
        this.f4407c = BuildConfig.FLAVOR;
        this.f4408d = BuildConfig.FLAVOR;
        this.f4409e = 0;
        this.f4410f = BuildConfig.FLAVOR;
        this.f4412h = false;
        this.f4411g = BuildConfig.FLAVOR;
        this.f4419o = BuildConfig.FLAVOR;
        this.f4413i = BuildConfig.FLAVOR;
        this.f4420p = 0;
        this.f4425u = BuildConfig.FLAVOR;
        this.f4418n = 0;
        this.f4423s = BuildConfig.FLAVOR;
        this.f4426v.clear();
        m5564v();
    }

    /* JADX INFO: renamed from: v */
    public void m5564v() {
        this.f4415k = BuildConfig.FLAVOR;
        this.f4416l = BuildConfig.FLAVOR;
        this.f4414j = BuildConfig.FLAVOR;
        this.f4417m = BuildConfig.FLAVOR;
    }

    /* JADX INFO: renamed from: w */
    public void m5565w(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("uuid")) {
                this.f4405a = jSONObject.getString("uuid");
                this.f4406b = jSONObject.getString("MFD");
            }
            if (jSONObject.has("hwVersion")) {
                this.f4413i = jSONObject.getString("hwVersion");
                this.f4420p = jSONObject.getInt("WiFiChannel");
                this.f4419o = jSONObject.getString("OemName");
                if (jSONObject.has("CusCode")) {
                    this.f4423s = jSONObject.getString("CusCode");
                }
            }
            if (jSONObject.has("MDLinkType")) {
                this.f4414j = jSONObject.getString("MDLinkType");
                this.f4417m = jSONObject.getString("MDLinkVersion");
                String string = jSONObject.getString("MDModel");
                if (string.startsWith("iPhone")) {
                    this.f4415k = f4403w.get(string);
                }
                if (TextUtils.isEmpty(this.f4415k)) {
                    this.f4415k = string;
                }
                this.f4416l = jSONObject.getString("MDOSVersion");
            }
            if (jSONObject.has("cpuTemp")) {
                this.f4418n = jSONObject.getInt("cpuTemp");
            }
            if (jSONObject.has("fileName")) {
                this.f4408d = jSONObject.getString("fileName");
            } else if (jSONObject.has("productType")) {
                String string2 = jSONObject.getString("productType");
                this.f4410f = string2;
                if ("Auto_Box".equals(string2)) {
                    this.f4408d = "Auto_Box_Update.img";
                } else if ("A15HW".equals(string2)) {
                    this.f4408d = "A15H_Update.img";
                }
            }
            if (jSONObject.has("HiCar")) {
                boolean z = true;
                if (jSONObject.getInt("HiCar") != 1) {
                    z = false;
                }
                this.f4412h = z;
            }
            if (jSONObject.has("btName")) {
                this.f4424t = jSONObject.getString("btName");
            }
            if (jSONObject.has("ChannelList")) {
                this.f4425u = jSONObject.getString("ChannelList");
            }
            if (jSONObject.has("DevList")) {
                JSONArray jSONArray = jSONObject.getJSONArray("DevList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String string3 = jSONObject2.getString("id");
                    String string4 = jSONObject2.getString("name");
                    String string5 = BuildConfig.FLAVOR;
                    if (jSONObject2.has("type")) {
                        string5 = jSONObject2.getString("type");
                    }
                    this.f4426v.put(string3, new C0849d(string3, string4, string5));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: x */
    public void m5566x(String str) {
        if (str.length() > 15) {
            this.f4411g = str.substring(str.length() - 1);
            str = str.substring(0, 15);
        }
        this.f4407c = str;
    }

    /* JADX INFO: renamed from: y */
    public void m5567y(int i, int i2) {
        this.f4421q = i;
        this.f4422r = i2;
    }

    /* JADX INFO: renamed from: z */
    public void m5568z(int i) {
        this.f4420p = i;
    }
}
