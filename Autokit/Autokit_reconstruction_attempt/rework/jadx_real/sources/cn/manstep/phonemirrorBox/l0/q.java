package cn.manstep.phonemirrorBox.l0;

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
import androidx.fragment.app.Fragment;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.util.p;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import net.iwebrtc.audioprocess.sdk.AudioProcess;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class q extends Fragment implements View.OnClickListener, View.OnLongClickListener {
    private EditText a0;
    private Button b0;
    private String c0 = "录音文件";
    private RadioButton d0;
    private int e0;

    class a implements TextWatcher {
        a(q qVar) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (!TextUtils.isEmpty(editable)) {
                AudioProcess.RecordDelay = Integer.parseInt(editable.toString());
            }
            cn.manstep.phonemirrorBox.util.s.c("EchoCancellationFragment,afterTextChanged: " + editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            cn.manstep.phonemirrorBox.util.s.c("EchoCancellationFragment,onTextChanged: " + ((Object) charSequence));
        }
    }

    class b implements p.e {
        b() {
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            q.this.k2();
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            q.this.l2(str);
        }
    }

    class c implements View.OnClickListener {
        c(q qVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    class d implements View.OnClickListener {
        d(q qVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    private Map<String, String> i2(String str) {
        HashMap map = new HashMap();
        map.put("notes", str);
        String strC = cn.manstep.phonemirrorBox.p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String strC2 = cn.manstep.phonemirrorBox.p.c("ro.board.platform", BuildConfig.FLAVOR);
        map.put("resolution", cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l);
        map.put("manufacturer", strC);
        map.put("platform", strC2);
        map.put("android", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
        map.put("version", "2025.03.19.1126");
        map.put("uuid", cn.manstep.phonemirrorBox.u.z().I());
        map.put("model", Build.MODEL);
        return map;
    }

    private void j2() {
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
    public void k2() {
        Toast.makeText(K(), 2131689996, 0).show();
        if (this.e0 == 2) {
            j2();
        }
        this.b0.setEnabled(true);
        this.b0.setText(2131689997);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l2(String str) {
        int i = this.e0;
        if (i == 1) {
            this.e0 = 2;
            p2("output.pcm", "output.pcm");
        } else if (i == 2) {
            this.e0 = 3;
            p2("input_aec.pcm", "input_aec.pcm");
        } else if (i == 3) {
            this.b0.setEnabled(true);
            this.b0.setText(2131689997);
            Toast.makeText(K(), 2131689998, 0).show();
            j2();
        }
    }

    private void m2(boolean z, int i) {
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
        b0.i().F("RecordDelay", Integer.valueOf(AudioProcess.RecordDelay));
        this.a0.setText(BuildConfig.FLAVOR + AudioProcess.RecordDelay);
        this.a0.setSelection((BuildConfig.FLAVOR + AudioProcess.RecordDelay).length());
    }

    private void n2(boolean z) {
        if (!z) {
            cn.manstep.phonemirrorBox.p.w = false;
            cn.manstep.phonemirrorBox.p.x = false;
            cn.manstep.phonemirrorBox.p.y = false;
        } else {
            cn.manstep.phonemirrorBox.p.w = true;
            cn.manstep.phonemirrorBox.p.x = true;
            cn.manstep.phonemirrorBox.p.y = true;
            j2();
        }
    }

    private void p2(String str, String str2) {
        new cn.manstep.phonemirrorBox.util.p(10).o("/a/upload/log", i2(this.c0), cn.manstep.phonemirrorBox.u.z().I().substring(0, 12) + "_" + str, str2, new b());
    }

    private void q2() {
        if (!this.d0.isChecked()) {
            this.d0.setChecked(true);
        }
        File file = new File("input_src.pcm");
        if (!file.isFile() || !file.exists()) {
            Toast.makeText(K(), 2131689734, 0).show();
            return;
        }
        if (file.length() > 52428800) {
            j2();
            Toast.makeText(K(), 2131689734, 0).show();
            return;
        }
        File file2 = new File("output.pcm");
        if (!file2.isFile() || !file2.exists()) {
            Toast.makeText(K(), 2131689734, 0).show();
            return;
        }
        if (file2.length() > 52428800) {
            j2();
            Toast.makeText(K(), 2131689734, 0).show();
            return;
        }
        File file3 = new File("input_aec.pcm");
        if (!file3.isFile() || !file3.exists()) {
            Toast.makeText(K(), 2131689734, 0).show();
            return;
        }
        if (file3.length() > 52428800) {
            j2();
            Toast.makeText(K(), 2131689734, 0).show();
        } else {
            this.b0.setEnabled(false);
            this.b0.setText(2131689999);
            this.e0 = 1;
            p2("input.pcm", "input_src.pcm");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void H0(Bundle bundle) {
        super.H0(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492939, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void M0() {
        super.M0();
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        ((Button) view.findViewById(2131296370)).setOnClickListener(this);
        ((ImageView) view.findViewById(2131296557)).setOnClickListener(this);
        Button button = (Button) view.findViewById(2131296388);
        this.b0 = button;
        button.setOnClickListener(this);
        ImageView imageView = (ImageView) view.findViewById(2131296368);
        imageView.setOnClickListener(this);
        imageView.setOnLongClickListener(this);
        ImageView imageView2 = (ImageView) view.findViewById(2131296385);
        imageView2.setOnClickListener(this);
        imageView2.setOnLongClickListener(this);
        EditText editText = (EditText) view.findViewById(2131296485);
        this.a0 = editText;
        editText.setText(BuildConfig.FLAVOR + AudioProcess.RecordDelay);
        this.a0.setSelection((BuildConfig.FLAVOR + AudioProcess.RecordDelay).length());
        this.a0.addTextChangedListener(new a(this));
        RadioButton radioButton = (RadioButton) view.findViewById(2131296732);
        this.d0 = (RadioButton) view.findViewById(2131296731);
        if (cn.manstep.phonemirrorBox.p.w && cn.manstep.phonemirrorBox.p.x) {
            radioButton.setChecked(true);
        } else {
            this.d0.setChecked(true);
        }
        radioButton.setOnClickListener(this);
        this.d0.setOnClickListener(this);
        this.c0 = "37_(" + Build.HARDWARE + ")(" + Build.PRODUCT + ")";
    }

    public void o2(androidx.fragment.app.n nVar, int i) {
        cn.manstep.phonemirrorBox.k0.a.I2(nVar, i, new c(this), new d(this));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296368:
                m2(true, 5);
                break;
            case 2131296370:
                if (K() instanceof s) {
                    ((s) K()).f(this);
                }
                break;
            case 2131296385:
                m2(false, 5);
                break;
            case 2131296388:
                q2();
                break;
            case 2131296557:
                o2(J(), 2131689720);
                break;
            case 2131296731:
                n2(false);
                break;
            case 2131296732:
                n2(true);
                break;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        int id = view.getId();
        if (id == 2131296368) {
            m2(true, 50);
            return true;
        }
        if (id != 2131296385) {
            return false;
        }
        m2(false, 50);
        return true;
    }
}
