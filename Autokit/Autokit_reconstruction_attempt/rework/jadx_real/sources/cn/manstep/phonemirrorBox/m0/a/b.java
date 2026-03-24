package cn.manstep.phonemirrorBox.m0.a;

import android.view.View;
import cn.manstep.phonemirrorBox.x0.k;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class b implements k.InterfaceC0106k {
    final a a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f1783b;

    public interface a {
        void c(int i, View view);
    }

    public b(a aVar, int i) {
        this.a = aVar;
        this.f1783b = i;
    }

    @Override // cn.manstep.phonemirrorBox.x0.k.InterfaceC0106k
    public void a(View view) {
        this.a.c(this.f1783b, view);
    }
}
