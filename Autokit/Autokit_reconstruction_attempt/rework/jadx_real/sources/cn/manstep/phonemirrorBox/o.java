package cn.manstep.phonemirrorBox;

import cn.manstep.phonemirrorBox.util.p;
import com.yalantis.ucrop.BuildConfig;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class o {
    private final Map<String, String> a;

    class a implements p.e {
        a(o oVar) {
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            cn.manstep.phonemirrorBox.util.s.e("CarlinKitHttp,request->failure： " + str);
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            cn.manstep.phonemirrorBox.util.s.c("CarlinKitHttp,request: " + str);
        }
    }

    public o() {
        HashMap map = new HashMap();
        this.a = map;
        map.put("content-type", "application/json");
    }

    private String c(Map<String, String> map) {
        String string = map == null ? BuildConfig.FLAVOR : new JSONObject(map).toString();
        String strW = cn.manstep.phonemirrorBox.util.c0.w(string + "Qft5ew9rsdufw0Gew4Mkr3xh");
        HashMap map2 = new HashMap();
        map2.put("sign", strW);
        map2.put("data", string);
        return new JSONObject(map2).toString();
    }

    private void d(Map<String, String> map, String str) {
        String strC = c(map);
        cn.manstep.phonemirrorBox.util.s.c("CarlinKitHttp,request: " + strC);
        new cn.manstep.phonemirrorBox.util.p(this.a).i(str, strC, new a(this));
    }

    public void a(Map<String, String> map) {
        d(map, "http://carlinkit.net:8610/YLInterface/addData.do");
    }

    public void b(Map<String, String> map) {
        d(map, "http://carlinkit.net:8610/YLInterface/addFeedback.do");
    }
}
