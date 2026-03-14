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
import com.yalantis.ucrop.BuildConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class l extends Dialog implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<cn.manstep.phonemirrorBox.g0.b> f1719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private cn.manstep.phonemirrorBox.d0.h f1720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<Context> f1721d;
    private TextView e;
    private Button f;
    private c g;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l.this.e();
        }
    }

    class b implements View.OnLongClickListener {
        b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            l.this.f();
            return true;
        }
    }

    public interface c {
        void a(String str);

        void b(String str);

        void c();
    }

    public l(Context context) {
        super(context, 2131755249);
        cn.manstep.phonemirrorBox.util.s.c("BluetoothPairListDialog,BluetoothPairListDialog: A");
        this.f1721d = new WeakReference<>(context);
    }

    private void c() {
        FileInputStream fileInputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        int i;
        cn.manstep.phonemirrorBox.util.s.c("BluetoothPairListDialog,initData");
        this.f1719b.clear();
        File filesDir = this.f1721d.get().getFilesDir();
        if (filesDir.exists() && filesDir.isDirectory()) {
            try {
                fileInputStream = new FileInputStream(filesDir.getAbsoluteFile() + "/bluetooth_pair_list");
                cn.manstep.phonemirrorBox.util.s.c("BluetoothPairListDialog,initData: len=" + fileInputStream.available());
                inputStreamReader = new InputStreamReader(fileInputStream);
                bufferedReader = new BufferedReader(inputStreamReader);
                i = 0;
            } catch (Exception e) {
                cn.manstep.phonemirrorBox.util.s.c("BluetoothPairListDialog,initData: \n" + Log.getStackTraceString(e));
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
                cn.manstep.phonemirrorBox.util.s.c(sb.toString());
                this.f1719b.add(new cn.manstep.phonemirrorBox.g0.b(line.substring(17), line.substring(0, 17)));
                this.f1720c.notifyDataSetChanged();
            }
            bufferedReader.close();
            inputStreamReader.close();
            fileInputStream.close();
            this.f1720c.notifyDataSetChanged();
        }
    }

    private void d() {
        cn.manstep.phonemirrorBox.util.s.c("BluetoothPairListDialog,initView");
        this.e = (TextView) findViewById(2131296905);
        Button button = (Button) findViewById(2131296381);
        this.f = button;
        button.setOnClickListener(new a());
        this.f.setOnLongClickListener(new b());
        this.f1719b = new LinkedList();
        this.f1720c = new cn.manstep.phonemirrorBox.d0.h(this.f1721d.get(), this.f1719b);
        ListView listView = (ListView) findViewById(2131296596);
        listView.setAdapter((ListAdapter) this.f1720c);
        listView.setOnItemClickListener(this);
        listView.setOnItemLongClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        c cVar = this.g;
        if (cVar != null) {
            cVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        cn.manstep.phonemirrorBox.util.s.c("BluetoothPairListDialog,dismiss: ####");
    }

    public void g(c cVar) {
        this.g = cVar;
    }

    public void h(String str) {
        String[] strArrSplit = str.split(",");
        int i = 0;
        for (int i2 = 0; i2 < this.f1719b.size(); i2++) {
            if (strArrSplit.length < 1) {
                this.f1719b.get(i2).d(false);
            } else if (strArrSplit[i].equals(this.f1719b.get(i2).a())) {
                this.f1719b.get(i2).d(true);
                int i3 = i + 1;
                if (i3 < strArrSplit.length) {
                    i = i3;
                }
            } else {
                this.f1719b.get(i2).d(false);
            }
        }
        this.f1720c.notifyDataSetChanged();
    }

    @Override // android.app.Dialog
    public void hide() {
        super.hide();
    }

    public void i() {
        c();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        cn.manstep.phonemirrorBox.util.s.c("BluetoothPairListDialog,onCreate: A");
        super.onCreate(bundle);
        setContentView(2131492900);
        d();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        String strA = this.f1719b.get(i).a();
        cn.manstep.phonemirrorBox.util.s.c("BluetoothPairListDialog,onItemClick: " + strA);
        this.g.b(strA);
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f1719b.remove(i);
        this.f1720c.notifyDataSetChanged();
        String str = BuildConfig.FLAVOR;
        for (int i2 = 0; i2 < this.f1719b.size(); i2++) {
            str = str + this.f1719b.get(i2).a() + this.f1719b.get(i2).b() + "\n";
        }
        this.g.a(str + "\u0000");
        Context context = this.f1721d.get();
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
                cn.manstep.phonemirrorBox.util.s.c("BluetoothPairListDialog,onItemLongClick: \n" + Log.getStackTraceString(e));
            }
        }
        return true;
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.e.setText(charSequence);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        c();
        if (this.f1719b.isEmpty()) {
            return;
        }
        e();
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        this.e.setText(i);
    }
}
