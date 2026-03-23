package cn.manstep.phonemirrorBox.BoxInterface;

import android.text.TextUtils;
import com.yalantis.ucrop.BuildConfig;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class c {
    private static final Map<String, String> w;
    private static volatile c x;
    private String f;
    private String g;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private int n;
    private String o;
    private int p;
    private int q;
    private int r;
    private String s;
    private String t;
    private String u;
    private String a = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1434b = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f1435c = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f1436d = BuildConfig.FLAVOR;
    private int e = 0;
    private boolean h = false;
    private Map<String, cn.manstep.phonemirrorBox.g0.d> v = new ConcurrentHashMap();

    static {
        HashMap map = new HashMap();
        w = map;
        map.put("iPhone5,1", "iPhone 5 (GSM)");
        w.put("iPhone5,2", "iPhone 5 (GSM+CDMA)");
        w.put("iPhone5,3", "iPhone 5C (GSM)");
        w.put("iPhone5,4", "iPhone 5C (Global)");
        w.put("iPhone6,1", "iPhone 5S (GSM)");
        w.put("iPhone6,2", "iPhone 5S (Global)");
        w.put("iPhone7,1", "iPhone 6 Plus");
        w.put("iPhone7,2", "iPhone 6");
        w.put("iPhone8,1", "iPhone 6s");
        w.put("iPhone8,2", "iPhone 6s Plus");
        w.put("iPhone8,4", "iPhone SE (GSM)");
        w.put("iPhone9,1", "iPhone 7");
        w.put("iPhone9,2", "iPhone 7 Plus");
        w.put("iPhone9,3", "iPhone 7");
        w.put("iPhone9,4", "iPhone 7 Plus");
        w.put("iPhone10,1", "iPhone 8");
        w.put("iPhone10,2", "iPhone 8 Plus");
        w.put("iPhone10,3", "iPhone X Global");
        w.put("iPhone10,4", "iPhone 8");
        w.put("iPhone10,5", "iPhone 8 Plus");
        w.put("iPhone10,6", "iPhone X GSM");
        w.put("iPhone11,2", "iPhone XS");
        w.put("iPhone11,4", "iPhone XS Max");
        w.put("iPhone11,6", "iPhone XS Max Global");
        w.put("iPhone11,8", "iPhone XR");
        w.put("iPhone12,1", "iPhone 11");
        w.put("iPhone12,3", "iPhone 11 Pro");
        w.put("iPhone12,5", "iPhone 11 Pro Max");
        w.put("iPhone12,8", "iPhone SE 2nd Gen");
        w.put("iPhone13,1", "iPhone 12 Mini");
        w.put("iPhone13,2", "iPhone 12");
        w.put("iPhone13,3", "iPhone 12 Pro");
        w.put("iPhone13,4", "iPhone 12 Pro Max");
        w.put("iPhone14,2", "iPhone 13 Pro");
        w.put("iPhone14,3", "iPhone 13 Pro Max");
        w.put("iPhone14,4", "iPhone 13 Mini");
        w.put("iPhone14,5", "iPhone 13");
        w.put("iPhone14,6", "iPhone SE 3rd Gen");
        w.put("iPhone14,7", "iPhone 14");
        w.put("iPhone14,8", "iPhone 14 Plus");
        w.put("iPhone15,2", "iPhone 14 Pro");
        w.put("iPhone15,3", "iPhone 14 Pro Max");
        w.put("iPhone15,4", "iPhone 15");
        w.put("iPhone15,5", "iPhone 15 Plus");
        w.put("iPhone16,1", "iPhone 15 Pro");
        w.put("iPhone16,2", "iPhone 15 Pro Max");
        w.put("iPhone17,1", "iPhone 16 Pro");
        w.put("iPhone17,2", "iPhone 16 Pro Max");
        w.put("iPhone17,3", "iPhone 16");
        w.put("iPhone17,4", "iPhone 16 Plus");
    }

    private c() {
        u();
    }

    public static c e() {
        if (x == null) {
            synchronized (c.class) {
                if (x == null) {
                    x = new c();
                }
            }
        }
        return x;
    }

    public void A(boolean z) {
        this.e = z ? 1 : 0;
    }

    public String a() {
        return this.e + BuildConfig.FLAVOR + this.h + "\n" + String.format(Locale.CHINA, "0x%04X0x%04X", Integer.valueOf(this.q), Integer.valueOf(this.r)) + "\n" + this.f1435c.replace(".", BuildConfig.FLAVOR) + this.g + "\n" + this.f1434b + this.f + "\n" + this.a;
    }

    public int b() {
        return this.n;
    }

    public String c() {
        return this.f1436d;
    }

    public String d() {
        return this.i;
    }

    public String f() {
        return this.j;
    }

    public String g() {
        return this.m;
    }

    public String h() {
        return this.f1434b;
    }

    public String i() {
        return this.f;
    }

    public String j() {
        return this.k;
    }

    public String k() {
        return this.t;
    }

    public String l() {
        return this.l;
    }

    public String m() {
        return this.g;
    }

    public String n() {
        return this.s.replace("\n", BuildConfig.FLAVOR);
    }

    public String o() {
        return this.a;
    }

    public String p() {
        return this.f1435c;
    }

    public String q() {
        return String.format(Locale.CHINA, "%d(0x%04X),%d(0x%04X)", Integer.valueOf(this.q), Integer.valueOf(this.q), Integer.valueOf(this.r), Integer.valueOf(this.r));
    }

    public int r() {
        return this.p;
    }

    public String s() {
        return this.u;
    }

    public boolean t(int i, int[] iArr) {
        if (i <= 0 || this.r <= 0) {
            return false;
        }
        for (int i2 : iArr) {
            if (this.r == i2) {
                return false;
            }
        }
        return this.r != i;
    }

    public String toString() {
        return "BoxInfo{uuid='" + this.a + "', mfd='" + this.f1434b + "', ver='" + this.f1435c + "', fwName='" + this.f1436d + "', wifi=" + this.e + ", model='" + this.f + "', type='" + this.g + "', isSupportHiCar=" + this.h + ", hwVersion='" + this.i + "', linkType='" + this.j + "', phoneModel='" + this.k + "', phoneOsVersion='" + this.l + "', linkVersion='" + this.m + "', cpuTemp=" + this.n + ", oemName='" + this.o + "', wiFiChannel=" + this.p + ", vid=" + this.q + ", pid=" + this.r + ", userCode='" + this.s + "', phoneName='" + this.t + "', wifiChannelList='" + this.u + "'}";
    }

    public void u() {
        this.a = BuildConfig.FLAVOR;
        this.f1434b = BuildConfig.FLAVOR;
        this.f1435c = BuildConfig.FLAVOR;
        this.f1436d = BuildConfig.FLAVOR;
        this.e = 0;
        this.f = BuildConfig.FLAVOR;
        this.h = false;
        this.g = BuildConfig.FLAVOR;
        this.o = BuildConfig.FLAVOR;
        this.i = BuildConfig.FLAVOR;
        this.p = 0;
        this.u = BuildConfig.FLAVOR;
        this.n = 0;
        this.s = BuildConfig.FLAVOR;
        this.v.clear();
        v();
    }

    public void v() {
        this.k = BuildConfig.FLAVOR;
        this.l = BuildConfig.FLAVOR;
        this.j = BuildConfig.FLAVOR;
        this.m = BuildConfig.FLAVOR;
    }

    public void w(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("uuid")) {
                this.a = jSONObject.getString("uuid");
                this.f1434b = jSONObject.getString("MFD");
            }
            if (jSONObject.has("hwVersion")) {
                this.i = jSONObject.getString("hwVersion");
                this.p = jSONObject.getInt("WiFiChannel");
                this.o = jSONObject.getString("OemName");
                if (jSONObject.has("CusCode")) {
                    this.s = jSONObject.getString("CusCode");
                }
            }
            if (jSONObject.has("MDLinkType")) {
                this.j = jSONObject.getString("MDLinkType");
                this.m = jSONObject.getString("MDLinkVersion");
                String string = jSONObject.getString("MDModel");
                if (string.startsWith("iPhone")) {
                    this.k = w.get(string);
                }
                if (TextUtils.isEmpty(this.k)) {
                    this.k = string;
                }
                this.l = jSONObject.getString("MDOSVersion");
            }
            if (jSONObject.has("cpuTemp")) {
                this.n = jSONObject.getInt("cpuTemp");
            }
            if (jSONObject.has("fileName")) {
                this.f1436d = jSONObject.getString("fileName");
            } else if (jSONObject.has("productType")) {
                String string2 = jSONObject.getString("productType");
                this.f = string2;
                if ("Auto_Box".equals(string2)) {
                    this.f1436d = "Auto_Box_Update.img";
                } else if ("A15HW".equals(string2)) {
                    this.f1436d = "A15H_Update.img";
                }
            }
            if (jSONObject.has("HiCar")) {
                boolean z = true;
                if (jSONObject.getInt("HiCar") != 1) {
                    z = false;
                }
                this.h = z;
            }
            if (jSONObject.has("btName")) {
                this.t = jSONObject.getString("btName");
            }
            if (jSONObject.has("ChannelList")) {
                this.u = jSONObject.getString("ChannelList");
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
                    this.v.put(string3, new cn.manstep.phonemirrorBox.g0.d(string3, string4, string5));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void x(String str) {
        if (str.length() > 15) {
            this.g = str.substring(str.length() - 1);
            str = str.substring(0, 15);
        }
        this.f1435c = str;
    }

    public void y(int i, int i2) {
        this.q = i;
        this.r = i2;
    }

    public void z(int i) {
        this.p = i;
    }
}
