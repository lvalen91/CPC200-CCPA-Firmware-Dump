package cn.manstep.phonemirrorBox.l0;

import android.R;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListPopupWindow;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.w;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.manstep.phonemirrorBox.d0.i;
import cn.manstep.phonemirrorBox.d0.j;
import cn.manstep.phonemirrorBox.util.c0;
import cn.manstep.phonemirrorBox.util.e0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class r extends m implements View.OnClickListener {
    private cn.manstep.phonemirrorBox.d0.j d0;
    private cn.manstep.phonemirrorBox.i0.u f0;
    private RecyclerView g0;
    private androidx.fragment.app.n h0;
    private e0 i0;
    private Button j0;
    private File k0;
    private File l0;
    private File m0;
    private final List<cn.manstep.phonemirrorBox.util.o> e0 = new ArrayList();
    private androidx.activity.result.c<String> c0 = this.c0;
    private androidx.activity.result.c<String> c0 = this.c0;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r.this.g2();
        }
    }

    private boolean h2(String str) {
        File file = new File(str);
        return file.exists() && file.delete();
    }

    private boolean i2(String str, String str2, String str3) {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(str3 + "/" + str2));
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i <= 0) {
                            fileOutputStream.close();
                            fileInputStream.close();
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i);
                    }
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private void j2(File file, ArrayList<Uri> arrayList) {
        if (!file.isDirectory()) {
            arrayList.add(FileProvider.e(K1(), "cn.manstep.phonemirrorBox.fileprovider", file));
            return;
        }
        File file2 = new File(file.getAbsolutePath());
        if (file2.exists()) {
            for (File file3 : file2.listFiles()) {
                j2(file3, arrayList);
            }
        }
    }

    private cn.manstep.phonemirrorBox.util.o k2(File file) {
        File[] fileArrListFiles = file.listFiles();
        ArrayList arrayList = new ArrayList();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (!file2.getName().endsWith(".mmap3")) {
                    arrayList.add(new cn.manstep.phonemirrorBox.util.m(file2.getName(), file2.getPath()));
                }
            }
        }
        return new cn.manstep.phonemirrorBox.util.o(file.getName(), arrayList);
    }

    private File[] l2() {
        ArrayList arrayList = new ArrayList();
        Iterator<cn.manstep.phonemirrorBox.util.o> it = this.e0.iterator();
        while (it.hasNext()) {
            for (cn.manstep.phonemirrorBox.util.m mVar : it.next().a()) {
                if (mVar.c()) {
                    arrayList.add(new File(mVar.a()));
                }
            }
        }
        return (File[]) arrayList.toArray(new File[0]);
    }

    public static Fragment newInstance() {
        return new r();
    }

    private void w2(File[] fileArr) {
        if (fileArr.length <= 0) {
            Toast.makeText(K(), "文件不存在", 0).show();
            return;
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (File file : fileArr) {
            j2(file, arrayList);
        }
        Intent intent = new Intent();
        intent.setAction("cn.manstep.phonemirrorBox.file_share");
        intent.addCategory("receive");
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        intent.addFlags(3);
        List<ResolveInfo> listQueryIntentActivities = K1().getPackageManager().queryIntentActivities(intent, 0);
        if (listQueryIntentActivities.isEmpty()) {
            Toast.makeText(K(), "没有找到接收端程序", 0).show();
            return;
        }
        Iterator<? extends Parcelable> it = arrayList.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            Iterator<ResolveInfo> it2 = listQueryIntentActivities.iterator();
            while (it2.hasNext()) {
                K1().grantUriPermission(it2.next().activityInfo.packageName, uri, 3);
            }
        }
        a2(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x2, reason: merged with bridge method [inline-methods] */
    public void o2(View view, final cn.manstep.phonemirrorBox.util.m mVar, final String[] strArr) {
        final ListPopupWindow listPopupWindow = new ListPopupWindow(K1());
        listPopupWindow.setAdapter(new ArrayAdapter(K1(), R.layout.simple_list_item_1, strArr));
        listPopupWindow.setWidth(c0.b(K1(), 100.0f));
        listPopupWindow.setHeight(c0.b(K1(), 194.0f));
        listPopupWindow.setBackgroundDrawable(androidx.core.content.a.d(K1(), 2131230987));
        listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: cn.manstep.phonemirrorBox.l0.h
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                this.f1731b.t2(strArr, mVar, listPopupWindow, adapterView, view2, i, j);
            }
        });
        listPopupWindow.setAnchorView(view);
        listPopupWindow.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y2, reason: merged with bridge method [inline-methods] */
    public void p2(View view, final cn.manstep.phonemirrorBox.util.o oVar, final String[] strArr) {
        final ListPopupWindow listPopupWindow = new ListPopupWindow(K1());
        listPopupWindow.setAdapter(new ArrayAdapter(K1(), R.layout.simple_list_item_1, strArr));
        listPopupWindow.setWidth(c0.b(K1(), 100.0f));
        listPopupWindow.setHeight(c0.b(K1(), 145.0f));
        listPopupWindow.setBackgroundDrawable(androidx.core.content.a.d(K1(), 2131230987));
        listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: cn.manstep.phonemirrorBox.l0.d
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                this.f1725b.u2(strArr, oVar, listPopupWindow, adapterView, view2, i, j);
            }
        });
        listPopupWindow.setAnchorView(view);
        listPopupWindow.show();
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.a0 == null) {
            this.a0 = new w.a(D() == null ? null : D().getApplication());
        }
        cn.manstep.phonemirrorBox.i0.u uVar = (cn.manstep.phonemirrorBox.i0.u) androidx.databinding.f.e(layoutInflater, 2131492945, viewGroup, false);
        this.f0 = uVar;
        uVar.G(J1());
        this.f0.L((cn.manstep.phonemirrorBox.x0.k) new androidx.lifecycle.w(J1(), this.a0).a(cn.manstep.phonemirrorBox.x0.k.class));
        this.h0 = X();
        this.i0 = new e0(K(), this.h0);
        this.c0 = H1(new androidx.activity.result.f.c(), new androidx.activity.result.b() { // from class: cn.manstep.phonemirrorBox.l0.b
            @Override // androidx.activity.result.b
            public final void a(Object obj) {
                this.a.n2((Boolean) obj);
            }
        });
        return this.f0.t();
    }

    @Override // cn.manstep.phonemirrorBox.l0.m, androidx.fragment.app.Fragment
    @SuppressLint({"NotifyDataSetChanged"})
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        this.f0.v.setOnClickListener(new a());
        RecyclerView recyclerView = (RecyclerView) view.findViewById(2131296493);
        this.g0 = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(K()));
        this.k0 = cn.manstep.phonemirrorBox.util.n.s(K1());
        this.l0 = cn.manstep.phonemirrorBox.util.n.k(K1());
        File fileM = cn.manstep.phonemirrorBox.util.n.m(K1());
        this.m0 = fileM;
        this.e0.add(k2(fileM));
        this.e0.add(k2(this.k0));
        this.e0.add(k2(this.l0));
        final String[] strArr = {"另存为", "上传", "删除", "取消"};
        final String[] strArr2 = {"另存为", "删除", "取消"};
        cn.manstep.phonemirrorBox.d0.j jVar = new cn.manstep.phonemirrorBox.d0.j(K(), this.e0, new i.b() { // from class: cn.manstep.phonemirrorBox.l0.i
            @Override // cn.manstep.phonemirrorBox.d0.i.b
            public final void a(View view2, cn.manstep.phonemirrorBox.util.m mVar) {
                this.a.o2(strArr, view2, mVar);
            }
        }, new j.b() { // from class: cn.manstep.phonemirrorBox.l0.a
            @Override // cn.manstep.phonemirrorBox.d0.j.b
            public final void a(View view2, cn.manstep.phonemirrorBox.util.o oVar) {
                this.a.p2(strArr2, view2, oVar);
            }
        });
        this.d0 = jVar;
        this.g0.setAdapter(jVar);
        this.g0.setLayoutManager(new LinearLayoutManager(K()));
        ((CheckBox) view.findViewById(2131296883)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.manstep.phonemirrorBox.l0.c
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.a.q2(compoundButton, z);
            }
        });
        ((Button) view.findViewById(2131296776)).setOnClickListener(new View.OnClickListener() { // from class: cn.manstep.phonemirrorBox.l0.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f1729b.r2(view2);
            }
        });
        this.j0 = (Button) view.findViewById(2131296509);
        if (androidx.core.content.a.a(K1(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            this.j0.setVisibility(8);
        }
        this.j0.setOnClickListener(new View.OnClickListener() { // from class: cn.manstep.phonemirrorBox.l0.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f1730b.s2(view2);
            }
        });
    }

    public /* synthetic */ void m2() {
        this.d0.h();
    }

    public /* synthetic */ void n2(Boolean bool) {
        if (!bool.booleanValue()) {
            Toast.makeText(K1(), "权限被拒绝", 0).show();
        } else {
            Toast.makeText(K1(), "权限已授予", 0).show();
            this.j0.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131296776 && l2().length != 0) {
            w2(l2());
        }
        if (view.getId() != 2131296509 || androidx.core.content.a.a(K1(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return;
        }
        androidx.core.app.a.m(J1(), new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 123);
    }

    public /* synthetic */ void q2(CompoundButton compoundButton, boolean z) {
        for (cn.manstep.phonemirrorBox.util.o oVar : this.e0) {
            oVar.d(z);
            Iterator<cn.manstep.phonemirrorBox.util.m> it = oVar.a().iterator();
            while (it.hasNext()) {
                it.next().d(z);
            }
        }
        this.g0.post(new Runnable() { // from class: cn.manstep.phonemirrorBox.l0.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f1728b.m2();
            }
        });
    }

    public /* synthetic */ void r2(View view) {
        if (l2().length != 0) {
            w2(l2());
        }
    }

    public /* synthetic */ void s2(View view) {
        if (androidx.core.content.a.a(K1(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            this.c0.a("android.permission.WRITE_EXTERNAL_STORAGE");
        }
    }

    public /* synthetic */ void t2(String[] strArr, cn.manstep.phonemirrorBox.util.m mVar, ListPopupWindow listPopupWindow, AdapterView adapterView, View view, int i, long j) {
        String str = strArr[i];
        if (defpackage.a.a(str, "另存为")) {
            if (androidx.core.content.a.a(K1(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                this.c0.a("android.permission.WRITE_EXTERNAL_STORAGE");
            }
            if (i2(mVar.a(), mVar.b(), String.valueOf(Environment.getExternalStorageDirectory()))) {
                Toast.makeText(K1(), "文件另存成功", 0).show();
            } else {
                Toast.makeText(K1(), "文件另存失败!", 1).show();
            }
            listPopupWindow.dismiss();
            return;
        }
        if (defpackage.a.a(str, "上传")) {
            this.i0.s(mVar.b(), mVar.a());
            listPopupWindow.dismiss();
        } else if (!defpackage.a.a(str, "删除")) {
            if (defpackage.a.a(str, "取消")) {
                listPopupWindow.dismiss();
            }
        } else {
            if (h2(mVar.a())) {
                Toast.makeText(K1(), "文件已成功删除！", 0).show();
            } else {
                Toast.makeText(K1(), "文件删除失败！", 0).show();
            }
            v2();
            listPopupWindow.dismiss();
        }
    }

    public /* synthetic */ void u2(String[] strArr, cn.manstep.phonemirrorBox.util.o oVar, ListPopupWindow listPopupWindow, AdapterView adapterView, View view, int i, long j) {
        String str = strArr[i];
        if (!defpackage.a.a(str, "另存为")) {
            if (!defpackage.a.a(str, "删除")) {
                if (defpackage.a.a(str, "取消")) {
                    listPopupWindow.dismiss();
                    return;
                }
                return;
            }
            Iterator<cn.manstep.phonemirrorBox.util.m> it = oVar.a().iterator();
            while (it.hasNext()) {
                if (!h2(it.next().a())) {
                    Toast.makeText(K1(), "文件删除失败！", 0).show();
                    v2();
                    listPopupWindow.dismiss();
                    return;
                }
            }
            Toast.makeText(K1(), "文件已成功删除！", 0).show();
            v2();
            listPopupWindow.dismiss();
            return;
        }
        if (androidx.core.content.a.a(K1(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            this.c0.a("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        File file = new File(String.valueOf(Environment.getExternalStorageDirectory()) + "/" + oVar.b());
        file.mkdirs();
        for (cn.manstep.phonemirrorBox.util.m mVar : oVar.a()) {
            if (!i2(mVar.a(), mVar.b(), file.getAbsolutePath())) {
                Toast.makeText(K1(), "文件另存失败!", 1).show();
                listPopupWindow.dismiss();
                return;
            }
        }
        Toast.makeText(K1(), "文件夹另存成功", 0).show();
        listPopupWindow.dismiss();
    }

    public void v2() {
        this.e0.clear();
        this.e0.add(k2(this.m0));
        this.e0.add(k2(this.k0));
        this.e0.add(k2(this.l0));
        this.d0.h();
    }
}
