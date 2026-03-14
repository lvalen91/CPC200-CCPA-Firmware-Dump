package cn.manstep.phonemirrorBox.p078l0;

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
import androidx.activity.result.AbstractC0063c;
import androidx.activity.result.InterfaceC0062b;
import androidx.activity.result.p002f.C0068c;
import androidx.core.app.C0231a;
import androidx.core.content.C0242a;
import androidx.core.content.FileProvider;
import androidx.databinding.C0328f;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.C0409w;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.manstep.phonemirrorBox.p070d0.C0808i;
import cn.manstep.phonemirrorBox.p070d0.C0809j;
import cn.manstep.phonemirrorBox.p075i0.AbstractC0875u;
import cn.manstep.phonemirrorBox.p091x0.C1013k;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0968e0;
import cn.manstep.phonemirrorBox.util.C0976m;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0978o;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p000.C0000a;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.r */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ViewOnClickListenerC0911r extends C0906m implements View.OnClickListener {

    /* JADX INFO: renamed from: d0 */
    private C0809j f5745d0;

    /* JADX INFO: renamed from: f0 */
    private AbstractC0875u f5747f0;

    /* JADX INFO: renamed from: g0 */
    private RecyclerView f5748g0;

    /* JADX INFO: renamed from: h0 */
    private AbstractC0366n f5749h0;

    /* JADX INFO: renamed from: i0 */
    private C0968e0 f5750i0;

    /* JADX INFO: renamed from: j0 */
    private Button f5751j0;

    /* JADX INFO: renamed from: k0 */
    private File f5752k0;

    /* JADX INFO: renamed from: l0 */
    private File f5753l0;

    /* JADX INFO: renamed from: m0 */
    private File f5754m0;

    /* JADX INFO: renamed from: e0 */
    private final List<C0978o> f5746e0 = new ArrayList();

    /* JADX INFO: renamed from: c0 */
    private AbstractC0063c<String> f5744c0 = this.f5744c0;

    /* JADX INFO: renamed from: c0 */
    private AbstractC0063c<String> f5744c0 = this.f5744c0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.r$a */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewOnClickListenerC0911r.this.mo6691g2();
        }
    }

    /* JADX INFO: renamed from: h2 */
    private boolean m6730h2(String str) {
        File file = new File(str);
        return file.exists() && file.delete();
    }

    /* JADX INFO: renamed from: i2 */
    private boolean m6731i2(String str, String str2, String str3) {
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

    /* JADX INFO: renamed from: j2 */
    private void m6732j2(File file, ArrayList<Uri> arrayList) {
        if (!file.isDirectory()) {
            arrayList.add(FileProvider.m1690e(m2406K1(), "cn.manstep.phonemirrorBox.fileprovider", file));
            return;
        }
        File file2 = new File(file.getAbsolutePath());
        if (file2.exists()) {
            for (File file3 : file2.listFiles()) {
                m6732j2(file3, arrayList);
            }
        }
    }

    /* JADX INFO: renamed from: k2 */
    private C0978o m6733k2(File file) {
        File[] fileArrListFiles = file.listFiles();
        ArrayList arrayList = new ArrayList();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (!file2.getName().endsWith(".mmap3")) {
                    arrayList.add(new C0976m(file2.getName(), file2.getPath()));
                }
            }
        }
        return new C0978o(file.getName(), arrayList);
    }

    /* JADX INFO: renamed from: l2 */
    private File[] m6734l2() {
        ArrayList arrayList = new ArrayList();
        Iterator<C0978o> it = this.f5746e0.iterator();
        while (it.hasNext()) {
            for (C0976m c0976m : it.next().m7324a()) {
                if (c0976m.m7295c()) {
                    arrayList.add(new File(c0976m.m7293a()));
                }
            }
        }
        return (File[]) arrayList.toArray(new File[0]);
    }

    public static Fragment newInstance() {
        return new ViewOnClickListenerC0911r();
    }

    /* JADX INFO: renamed from: w2 */
    private void m6735w2(File[] fileArr) {
        if (fileArr.length <= 0) {
            Toast.makeText(m2404K(), "文件不存在", 0).show();
            return;
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (File file : fileArr) {
            m6732j2(file, arrayList);
        }
        Intent intent = new Intent();
        intent.setAction("cn.manstep.phonemirrorBox.file_share");
        intent.addCategory("receive");
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        intent.addFlags(3);
        List<ResolveInfo> listQueryIntentActivities = m2406K1().getPackageManager().queryIntentActivities(intent, 0);
        if (listQueryIntentActivities.isEmpty()) {
            Toast.makeText(m2404K(), "没有找到接收端程序", 0).show();
            return;
        }
        Iterator<? extends Parcelable> it = arrayList.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            Iterator<ResolveInfo> it2 = listQueryIntentActivities.iterator();
            while (it2.hasNext()) {
                m2406K1().grantUriPermission(it2.next().activityInfo.packageName, uri, 3);
            }
        }
        m2452a2(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x2, reason: merged with bridge method [inline-methods] */
    public void m6740o2(View view, final C0976m c0976m, final String[] strArr) {
        final ListPopupWindow listPopupWindow = new ListPopupWindow(m2406K1());
        listPopupWindow.setAdapter(new ArrayAdapter(m2406K1(), R.layout.simple_list_item_1, strArr));
        listPopupWindow.setWidth(C0964c0.m7178b(m2406K1(), 100.0f));
        listPopupWindow.setHeight(C0964c0.m7178b(m2406K1(), 194.0f));
        listPopupWindow.setBackgroundDrawable(C0242a.m1699d(m2406K1(), 2131230987));
        listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: cn.manstep.phonemirrorBox.l0.h
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                this.f5624b.m6745t2(strArr, c0976m, listPopupWindow, adapterView, view2, i, j);
            }
        });
        listPopupWindow.setAnchorView(view);
        listPopupWindow.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y2, reason: merged with bridge method [inline-methods] */
    public void m6741p2(View view, final C0978o c0978o, final String[] strArr) {
        final ListPopupWindow listPopupWindow = new ListPopupWindow(m2406K1());
        listPopupWindow.setAdapter(new ArrayAdapter(m2406K1(), R.layout.simple_list_item_1, strArr));
        listPopupWindow.setWidth(C0964c0.m7178b(m2406K1(), 100.0f));
        listPopupWindow.setHeight(C0964c0.m7178b(m2406K1(), 145.0f));
        listPopupWindow.setBackgroundDrawable(C0242a.m1699d(m2406K1(), 2131230987));
        listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: cn.manstep.phonemirrorBox.l0.d
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                this.f5617b.m6746u2(strArr, c0978o, listPopupWindow, adapterView, view2, i, j);
            }
        });
        listPopupWindow.setAnchorView(view);
        listPopupWindow.show();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f5690a0 == null) {
            this.f5690a0 = new C0409w.a(m2385D() == null ? null : m2385D().getApplication());
        }
        AbstractC0875u abstractC0875u = (AbstractC0875u) C0328f.m2359e(layoutInflater, 2131492945, viewGroup, false);
        this.f5747f0 = abstractC0875u;
        abstractC0875u.m2328G(m2403J1());
        this.f5747f0.mo6477L((C1013k) new C0409w(m2403J1(), this.f5690a0).m3053a(C1013k.class));
        this.f5749h0 = m2441X();
        this.f5750i0 = new C0968e0(m2404K(), this.f5749h0);
        this.f5744c0 = m2398H1(new C0068c(), new InterfaceC0062b() { // from class: cn.manstep.phonemirrorBox.l0.b
            @Override // androidx.activity.result.InterfaceC0062b
            /* JADX INFO: renamed from: a */
            public final void mo341a(Object obj) {
                this.f5615a.m6739n2((Boolean) obj);
            }
        });
        return this.f5747f0.m2334t();
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m, androidx.fragment.app.Fragment
    @SuppressLint({"NotifyDataSetChanged"})
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        this.f5747f0.f5465v.setOnClickListener(new a());
        RecyclerView recyclerView = (RecyclerView) view.findViewById(2131296493);
        this.f5748g0 = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(m2404K()));
        this.f5752k0 = C0977n.m7316s(m2406K1());
        this.f5753l0 = C0977n.m7308k(m2406K1());
        File fileM7310m = C0977n.m7310m(m2406K1());
        this.f5754m0 = fileM7310m;
        this.f5746e0.add(m6733k2(fileM7310m));
        this.f5746e0.add(m6733k2(this.f5752k0));
        this.f5746e0.add(m6733k2(this.f5753l0));
        final String[] strArr = {"另存为", "上传", "删除", "取消"};
        final String[] strArr2 = {"另存为", "删除", "取消"};
        C0809j c0809j = new C0809j(m2404K(), this.f5746e0, new C0808i.b() { // from class: cn.manstep.phonemirrorBox.l0.i
            @Override // cn.manstep.phonemirrorBox.p070d0.C0808i.b
            /* JADX INFO: renamed from: a */
            public final void mo6181a(View view2, C0976m c0976m) {
                this.f5628a.m6740o2(strArr, view2, c0976m);
            }
        }, new C0809j.b() { // from class: cn.manstep.phonemirrorBox.l0.a
            @Override // cn.manstep.phonemirrorBox.p070d0.C0809j.b
            /* JADX INFO: renamed from: a */
            public final void mo6186a(View view2, C0978o c0978o) {
                this.f5613a.m6741p2(strArr2, view2, c0978o);
            }
        });
        this.f5745d0 = c0809j;
        this.f5748g0.setAdapter(c0809j);
        this.f5748g0.setLayoutManager(new LinearLayoutManager(m2404K()));
        ((CheckBox) view.findViewById(2131296883)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.manstep.phonemirrorBox.l0.c
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f5616a.m6742q2(compoundButton, z);
            }
        });
        ((Button) view.findViewById(2131296776)).setOnClickListener(new View.OnClickListener() { // from class: cn.manstep.phonemirrorBox.l0.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f5622b.m6743r2(view2);
            }
        });
        this.f5751j0 = (Button) view.findViewById(2131296509);
        if (C0242a.m1696a(m2406K1(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            this.f5751j0.setVisibility(8);
        }
        this.f5751j0.setOnClickListener(new View.OnClickListener() { // from class: cn.manstep.phonemirrorBox.l0.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f5623b.m6744s2(view2);
            }
        });
    }

    /* JADX INFO: renamed from: m2 */
    public /* synthetic */ void m6738m2() {
        this.f5745d0.m3412h();
    }

    /* JADX INFO: renamed from: n2 */
    public /* synthetic */ void m6739n2(Boolean bool) {
        if (!bool.booleanValue()) {
            Toast.makeText(m2406K1(), "权限被拒绝", 0).show();
        } else {
            Toast.makeText(m2406K1(), "权限已授予", 0).show();
            this.f5751j0.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131296776 && m6734l2().length != 0) {
            m6735w2(m6734l2());
        }
        if (view.getId() != 2131296509 || C0242a.m1696a(m2406K1(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return;
        }
        C0231a.m1643m(m2403J1(), new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 123);
    }

    /* JADX INFO: renamed from: q2 */
    public /* synthetic */ void m6742q2(CompoundButton compoundButton, boolean z) {
        for (C0978o c0978o : this.f5746e0) {
            c0978o.m7327d(z);
            Iterator<C0976m> it = c0978o.m7324a().iterator();
            while (it.hasNext()) {
                it.next().m7296d(z);
            }
        }
        this.f5748g0.post(new Runnable() { // from class: cn.manstep.phonemirrorBox.l0.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f5621b.m6738m2();
            }
        });
    }

    /* JADX INFO: renamed from: r2 */
    public /* synthetic */ void m6743r2(View view) {
        if (m6734l2().length != 0) {
            m6735w2(m6734l2());
        }
    }

    /* JADX INFO: renamed from: s2 */
    public /* synthetic */ void m6744s2(View view) {
        if (C0242a.m1696a(m2406K1(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            this.f5744c0.m342a("android.permission.WRITE_EXTERNAL_STORAGE");
        }
    }

    /* JADX INFO: renamed from: t2 */
    public /* synthetic */ void m6745t2(String[] strArr, C0976m c0976m, ListPopupWindow listPopupWindow, AdapterView adapterView, View view, int i, long j) {
        String str = strArr[i];
        if (C0000a.m0a(str, "另存为")) {
            if (C0242a.m1696a(m2406K1(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                this.f5744c0.m342a("android.permission.WRITE_EXTERNAL_STORAGE");
            }
            if (m6731i2(c0976m.m7293a(), c0976m.m7294b(), String.valueOf(Environment.getExternalStorageDirectory()))) {
                Toast.makeText(m2406K1(), "文件另存成功", 0).show();
            } else {
                Toast.makeText(m2406K1(), "文件另存失败!", 1).show();
            }
            listPopupWindow.dismiss();
            return;
        }
        if (C0000a.m0a(str, "上传")) {
            this.f5750i0.m7231s(c0976m.m7294b(), c0976m.m7293a());
            listPopupWindow.dismiss();
        } else if (!C0000a.m0a(str, "删除")) {
            if (C0000a.m0a(str, "取消")) {
                listPopupWindow.dismiss();
            }
        } else {
            if (m6730h2(c0976m.m7293a())) {
                Toast.makeText(m2406K1(), "文件已成功删除！", 0).show();
            } else {
                Toast.makeText(m2406K1(), "文件删除失败！", 0).show();
            }
            m6747v2();
            listPopupWindow.dismiss();
        }
    }

    /* JADX INFO: renamed from: u2 */
    public /* synthetic */ void m6746u2(String[] strArr, C0978o c0978o, ListPopupWindow listPopupWindow, AdapterView adapterView, View view, int i, long j) {
        String str = strArr[i];
        if (!C0000a.m0a(str, "另存为")) {
            if (!C0000a.m0a(str, "删除")) {
                if (C0000a.m0a(str, "取消")) {
                    listPopupWindow.dismiss();
                    return;
                }
                return;
            }
            Iterator<C0976m> it = c0978o.m7324a().iterator();
            while (it.hasNext()) {
                if (!m6730h2(it.next().m7293a())) {
                    Toast.makeText(m2406K1(), "文件删除失败！", 0).show();
                    m6747v2();
                    listPopupWindow.dismiss();
                    return;
                }
            }
            Toast.makeText(m2406K1(), "文件已成功删除！", 0).show();
            m6747v2();
            listPopupWindow.dismiss();
            return;
        }
        if (C0242a.m1696a(m2406K1(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            this.f5744c0.m342a("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        File file = new File(String.valueOf(Environment.getExternalStorageDirectory()) + "/" + c0978o.m7325b());
        file.mkdirs();
        for (C0976m c0976m : c0978o.m7324a()) {
            if (!m6731i2(c0976m.m7293a(), c0976m.m7294b(), file.getAbsolutePath())) {
                Toast.makeText(m2406K1(), "文件另存失败!", 1).show();
                listPopupWindow.dismiss();
                return;
            }
        }
        Toast.makeText(m2406K1(), "文件夹另存成功", 0).show();
        listPopupWindow.dismiss();
    }

    /* JADX INFO: renamed from: v2 */
    public void m6747v2() {
        this.f5746e0.clear();
        this.f5746e0.add(m6733k2(this.f5754m0));
        this.f5746e0.add(m6733k2(this.f5752k0));
        this.f5746e0.add(m6733k2(this.f5753l0));
        this.f5745d0.m3412h();
    }
}
