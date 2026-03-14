package cn.manstep.phonemirrorBox;

import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0979p;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.BuildConfig;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.o */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0923o {

    /* JADX INFO: renamed from: a */
    private final Map<String, String> f5853a;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.o$a */
    class a implements C0979p.e {
        a(C0923o c0923o) {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            C0982s.m7375e("CarlinKitHttp,request->failure： " + str);
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C0982s.m7373c("CarlinKitHttp,request: " + str);
        }
    }

    public C0923o() {
        HashMap map = new HashMap();
        this.f5853a = map;
        map.put("content-type", "application/json");
    }

    /* JADX INFO: renamed from: c */
    private String m6849c(Map<String, String> map) {
        String string = map == null ? BuildConfig.FLAVOR : new JSONObject(map).toString();
        String strM7199w = C0964c0.m7199w(string + "Qft5ew9rsdufw0Gew4Mkr3xh");
        HashMap map2 = new HashMap();
        map2.put("sign", strM7199w);
        map2.put("data", string);
        return new JSONObject(map2).toString();
    }

    /* JADX INFO: renamed from: d */
    private void m6850d(Map<String, String> map, String str) {
        String strM6849c = m6849c(map);
        C0982s.m7373c("CarlinKitHttp,request: " + strM6849c);
        new C0979p(this.f5853a).m7341i(str, strM6849c, new a(this));
    }

    /* JADX INFO: renamed from: a */
    public void m6851a(Map<String, String> map) {
        m6850d(map, "http://carlinkit.net:8610/YLInterface/addData.do");
    }

    /* JADX INFO: renamed from: b */
    public void m6852b(Map<String, String> map) {
        m6850d(map, "http://carlinkit.net:8610/YLInterface/addFeedback.do");
    }
}
