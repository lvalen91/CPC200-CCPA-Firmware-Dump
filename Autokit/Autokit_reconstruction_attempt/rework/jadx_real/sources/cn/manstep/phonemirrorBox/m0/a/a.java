package cn.manstep.phonemirrorBox.m0.a;

import android.view.View;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class a implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final InterfaceC0091a f1781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f1782c;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.m0.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0091a {
        void b(int i, View view);
    }

    public a(InterfaceC0091a interfaceC0091a, int i) {
        this.f1781b = interfaceC0091a;
        this.f1782c = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1781b.b(this.f1782c, view);
    }
}
