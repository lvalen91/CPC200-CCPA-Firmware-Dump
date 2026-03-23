package cn.manstep.phonemirrorBox.p078l0;

import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.Toast;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.Fragment;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.util.C0979p;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import net.iwebrtc.audioprocess.sdk.AudioProcess;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.q */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ViewOnClickListenerC0910q extends Fragment implements View.OnClickListener, View.OnLongClickListener {

    /* JADX INFO: renamed from: a0 */
    private EditText f5738a0;

    /* JADX INFO: renamed from: b0 */
    private Button f5739b0;

    /* JADX INFO: renamed from: c0 */
    private String f5740c0 = "录音文件";

    /* JADX INFO: renamed from: d0 */
    private RadioButton f5741d0;

    /* JADX INFO: renamed from: e0 */
    private int f5742e0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.q$a */
    class a implements TextWatcher {
        a(ViewOnClickListenerC0910q viewOnClickListenerC0910q) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (!TextUtils.isEmpty(editable)) {
                AudioProcess.RecordDelay = Integer.parseInt(editable.toString());
            }
            C0982s.m7373c("EchoCancellationFragment,afterTextChanged: " + editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C0982s.m7373c("EchoCancellationFragment,onTextChanged: " + ((Object) charSequence));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.q$b */
    class b implements C0979p.e {
        b() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            ViewOnClickListenerC0910q.this.m6723k2();
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            ViewOnClickListenerC0910q.this.m6724l2(str);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.q$c */
    class c implements View.OnClickListener {
        c(ViewOnClickListenerC0910q viewOnClickListenerC0910q) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.q$d */
    class d implements View.OnClickListener {
        d(ViewOnClickListenerC0910q viewOnClickListenerC0910q) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: i2 */
    private Map<String, String> m6721i2(String str) {
        HashMap map = new HashMap();
        map.put("notes", str);
        String strM6859c = C0925p.m6859c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String strM6859c2 = C0925p.m6859c("ro.board.platform", BuildConfig.FLAVOR);
        map.put("resolution", C0925p.f5874k + "x" + C0925p.f5875l);
        map.put("manufacturer", strM6859c);
        map.put("platform", strM6859c2);
        map.put("android", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
        map.put("version", "2025.03.19.1126");
        map.put("uuid", C0953u.m7001z().m7010I());
        map.put("model", Build.MODEL);
        return map;
    }

    /* JADX INFO: renamed from: j2 */
    private void m6722j2() {
        File file = new File("input_src.pcm");
        if (file.isFile() && file.exists()) {
            file.delete();
        }
        File file2 = new File("output.pcm");
        if (file2.isFile() && file2.exists()) {
            file2.delete();
        }
        File file3 = new File("input_aec.pcm");
        if (file3.isFile() && file3.exists()) {
            file3.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k2 */
    public void m6723k2() {
        Toast.makeText(m2404K(), 2131689996, 0).show();
        if (this.f5742e0 == 2) {
            m6722j2();
        }
        this.f5739b0.setEnabled(true);
        this.f5739b0.setText(2131689997);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l2 */
    public void m6724l2(String str) {
        int i = this.f5742e0;
        if (i == 1) {
            this.f5742e0 = 2;
            m6727p2("output.pcm", "output.pcm");
        } else if (i == 2) {
            this.f5742e0 = 3;
            m6727p2("input_aec.pcm", "input_aec.pcm");
        } else if (i == 3) {
            this.f5739b0.setEnabled(true);
            this.f5739b0.setText(2131689997);
            Toast.makeText(m2404K(), 2131689998, 0).show();
            m6722j2();
        }
    }

    /* JADX INFO: renamed from: m2 */
    private void m6725m2(boolean z, int i) {
        if (z) {
            int i2 = AudioProcess.RecordDelay + i;
            AudioProcess.RecordDelay = i2;
            if (i2 >= 10000) {
                AudioProcess.RecordDelay = 10000;
            }
        } else {
            int i3 = AudioProcess.RecordDelay - i;
            AudioProcess.RecordDelay = i3;
            if (i3 <= 0) {
                AudioProcess.RecordDelay = 0;
            }
        }
        C0795b0.m6071i().m6085F("RecordDelay", Integer.valueOf(AudioProcess.RecordDelay));
        this.f5738a0.setText(BuildConfig.FLAVOR + AudioProcess.RecordDelay);
        this.f5738a0.setSelection((BuildConfig.FLAVOR + AudioProcess.RecordDelay).length());
    }

    /* JADX INFO: renamed from: n2 */
    private void m6726n2(boolean z) {
        if (!z) {
            C0925p.f5886w = false;
            C0925p.f5887x = false;
            C0925p.f5888y = false;
        } else {
            C0925p.f5886w = true;
            C0925p.f5887x = true;
            C0925p.f5888y = true;
            m6722j2();
        }
    }

    /* JADX INFO: renamed from: p2 */
    private void m6727p2(String str, String str2) {
        new C0979p(10).m7343o("/a/upload/log", m6721i2(this.f5740c0), C0953u.m7001z().m7010I().substring(0, 12) + "_" + str, str2, new b());
    }

    /* JADX INFO: renamed from: q2 */
    private void m6728q2() {
        if (!this.f5741d0.isChecked()) {
            this.f5741d0.setChecked(true);
        }
        File file = new File("input_src.pcm");
        if (!file.isFile() || !file.exists()) {
            Toast.makeText(m2404K(), 2131689734, 0).show();
            return;
        }
        if (file.length() > 52428800) {
            m6722j2();
            Toast.makeText(m2404K(), 2131689734, 0).show();
            return;
        }
        File file2 = new File("output.pcm");
        if (!file2.isFile() || !file2.exists()) {
            Toast.makeText(m2404K(), 2131689734, 0).show();
            return;
        }
        if (file2.length() > 52428800) {
            m6722j2();
            Toast.makeText(m2404K(), 2131689734, 0).show();
            return;
        }
        File file3 = new File("input_aec.pcm");
        if (!file3.isFile() || !file3.exists()) {
            Toast.makeText(m2404K(), 2131689734, 0).show();
            return;
        }
        if (file3.length() > 52428800) {
            m6722j2();
            Toast.makeText(m2404K(), 2131689734, 0).show();
        } else {
            this.f5739b0.setEnabled(false);
            this.f5739b0.setText(2131689999);
            this.f5742e0 = 1;
            m6727p2("input.pcm", "input_src.pcm");
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: H0 */
    public void mo2397H0(Bundle bundle) {
        super.mo2397H0(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492939, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: M0 */
    public void mo2411M0() {
        super.mo2411M0();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        ((Button) view.findViewById(2131296370)).setOnClickListener(this);
        ((ImageView) view.findViewById(2131296557)).setOnClickListener(this);
        Button button = (Button) view.findViewById(2131296388);
        this.f5739b0 = button;
        button.setOnClickListener(this);
        ImageView imageView = (ImageView) view.findViewById(2131296368);
        imageView.setOnClickListener(this);
        imageView.setOnLongClickListener(this);
        ImageView imageView2 = (ImageView) view.findViewById(2131296385);
        imageView2.setOnClickListener(this);
        imageView2.setOnLongClickListener(this);
        EditText editText = (EditText) view.findViewById(2131296485);
        this.f5738a0 = editText;
        editText.setText(BuildConfig.FLAVOR + AudioProcess.RecordDelay);
        this.f5738a0.setSelection((BuildConfig.FLAVOR + AudioProcess.RecordDelay).length());
        this.f5738a0.addTextChangedListener(new a(this));
        RadioButton radioButton = (RadioButton) view.findViewById(2131296732);
        this.f5741d0 = (RadioButton) view.findViewById(2131296731);
        if (C0925p.f5886w && C0925p.f5887x) {
            radioButton.setChecked(true);
        } else {
            this.f5741d0.setChecked(true);
        }
        radioButton.setOnClickListener(this);
        this.f5741d0.setOnClickListener(this);
        this.f5740c0 = "37_(" + Build.HARDWARE + ")(" + Build.PRODUCT + ")";
    }

    /* JADX INFO: renamed from: o2 */
    public void m6729o2(AbstractC0366n abstractC0366n, int i) {
        C0882a.m6527I2(abstractC0366n, i, new c(this), new d(this));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296368:
                m6725m2(true, 5);
                break;
            case 2131296370:
                if (m2404K() instanceof InterfaceC0912s) {
                    ((InterfaceC0912s) m2404K()).mo5267f(this);
                }
                break;
            case 2131296385:
                m6725m2(false, 5);
                break;
            case 2131296388:
                m6728q2();
                break;
            case 2131296557:
                m6729o2(m2401J(), 2131689720);
                break;
            case 2131296731:
                m6726n2(false);
                break;
            case 2131296732:
                m6726n2(true);
                break;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        int id = view.getId();
        if (id == 2131296368) {
            m6725m2(true, 50);
            return true;
        }
        if (id != 2131296385) {
            return false;
        }
        m6725m2(false, 50);
        return true;
    }
}
