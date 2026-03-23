package cn.manstep.phonemirrorBox;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.p070d0.C0807h;
import cn.manstep.phonemirrorBox.p073g0.C0847b;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.BuildConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class DialogC0893l extends Dialog implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {

    /* JADX INFO: renamed from: b */
    private List<C0847b> f5605b;

    /* JADX INFO: renamed from: c */
    private C0807h f5606c;

    /* JADX INFO: renamed from: d */
    private WeakReference<Context> f5607d;

    /* JADX INFO: renamed from: e */
    private TextView f5608e;

    /* JADX INFO: renamed from: f */
    private Button f5609f;

    /* JADX INFO: renamed from: g */
    private c f5610g;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l$a */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC0893l.this.m6637e();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l$b */
    class b implements View.OnLongClickListener {
        b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            DialogC0893l.this.m6638f();
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l$c */
    public interface c {
        /* JADX INFO: renamed from: a */
        void mo6642a(String str);

        /* JADX INFO: renamed from: b */
        void mo6643b(String str);

        /* JADX INFO: renamed from: c */
        void mo6644c();
    }

    public DialogC0893l(Context context) {
        super(context, 2131755249);
        C0982s.m7373c("BluetoothPairListDialog,BluetoothPairListDialog: A");
        this.f5607d = new WeakReference<>(context);
    }

    /* JADX INFO: renamed from: c */
    private void m6635c() {
        FileInputStream fileInputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        int i;
        C0982s.m7373c("BluetoothPairListDialog,initData");
        this.f5605b.clear();
        File filesDir = this.f5607d.get().getFilesDir();
        if (filesDir.exists() && filesDir.isDirectory()) {
            try {
                fileInputStream = new FileInputStream(filesDir.getAbsoluteFile() + "/bluetooth_pair_list");
                C0982s.m7373c("BluetoothPairListDialog,initData: len=" + fileInputStream.available());
                inputStreamReader = new InputStreamReader(fileInputStream);
                bufferedReader = new BufferedReader(inputStreamReader);
                i = 0;
            } catch (Exception e) {
                C0982s.m7373c("BluetoothPairListDialog,initData: \n" + Log.getStackTraceString(e));
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("BluetoothPairListDialog,initData: ");
                i++;
                sb.append(i);
                sb.append("=");
                sb.append(line);
                C0982s.m7373c(sb.toString());
                this.f5605b.add(new C0847b(line.substring(17), line.substring(0, 17)));
                this.f5606c.notifyDataSetChanged();
            }
            bufferedReader.close();
            inputStreamReader.close();
            fileInputStream.close();
            this.f5606c.notifyDataSetChanged();
        }
    }

    /* JADX INFO: renamed from: d */
    private void m6636d() {
        C0982s.m7373c("BluetoothPairListDialog,initView");
        this.f5608e = (TextView) findViewById(2131296905);
        Button button = (Button) findViewById(2131296381);
        this.f5609f = button;
        button.setOnClickListener(new a());
        this.f5609f.setOnLongClickListener(new b());
        this.f5605b = new LinkedList();
        this.f5606c = new C0807h(this.f5607d.get(), this.f5605b);
        ListView listView = (ListView) findViewById(2131296596);
        listView.setAdapter((ListAdapter) this.f5606c);
        listView.setOnItemClickListener(this);
        listView.setOnItemLongClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e */
    public void m6637e() {
        c cVar = this.f5610g;
        if (cVar != null) {
            cVar.mo6644c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f */
    public void m6638f() {
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        C0982s.m7373c("BluetoothPairListDialog,dismiss: ####");
    }

    /* JADX INFO: renamed from: g */
    public void m6639g(c cVar) {
        this.f5610g = cVar;
    }

    /* JADX INFO: renamed from: h */
    public void m6640h(String str) {
        String[] strArrSplit = str.split(",");
        int i = 0;
        for (int i2 = 0; i2 < this.f5605b.size(); i2++) {
            if (strArrSplit.length < 1) {
                this.f5605b.get(i2).m6327d(false);
            } else if (strArrSplit[i].equals(this.f5605b.get(i2).m6324a())) {
                this.f5605b.get(i2).m6327d(true);
                int i3 = i + 1;
                if (i3 < strArrSplit.length) {
                    i = i3;
                }
            } else {
                this.f5605b.get(i2).m6327d(false);
            }
        }
        this.f5606c.notifyDataSetChanged();
    }

    @Override // android.app.Dialog
    public void hide() {
        super.hide();
    }

    /* JADX INFO: renamed from: i */
    public void m6641i() {
        m6635c();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        C0982s.m7373c("BluetoothPairListDialog,onCreate: A");
        super.onCreate(bundle);
        setContentView(2131492900);
        m6636d();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        String strM6324a = this.f5605b.get(i).m6324a();
        C0982s.m7373c("BluetoothPairListDialog,onItemClick: " + strM6324a);
        this.f5610g.mo6643b(strM6324a);
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f5605b.remove(i);
        this.f5606c.notifyDataSetChanged();
        String str = BuildConfig.FLAVOR;
        for (int i2 = 0; i2 < this.f5605b.size(); i2++) {
            str = str + this.f5605b.get(i2).m6324a() + this.f5605b.get(i2).m6325b() + "\n";
        }
        this.f5610g.mo6642a(str + "\u0000");
        Context context = this.f5607d.get();
        if (context == null) {
            return true;
        }
        File filesDir = context.getFilesDir();
        if (filesDir.exists() && filesDir.isDirectory()) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(filesDir.getAbsolutePath() + "/bluetooth_pair_list");
                fileOutputStream.write(str.getBytes(), 0, str.getBytes().length);
                fileOutputStream.close();
            } catch (Exception e) {
                C0982s.m7373c("BluetoothPairListDialog,onItemLongClick: \n" + Log.getStackTraceString(e));
            }
        }
        return true;
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.f5608e.setText(charSequence);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        m6635c();
        if (this.f5605b.isEmpty()) {
            return;
        }
        m6637e();
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        this.f5608e.setText(i);
    }
}
