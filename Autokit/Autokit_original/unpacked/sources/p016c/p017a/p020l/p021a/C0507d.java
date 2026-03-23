package p016c.p017a.p020l.p021a;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import p016c.p017a.p020l.p021a.C0505b;

/* JADX INFO: renamed from: c.a.l.a.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"RestrictedAPI"})
class C0507d extends C0505b {

    /* JADX INFO: renamed from: n */
    private a f3156n;

    /* JADX INFO: renamed from: o */
    private boolean f3157o;

    /* JADX INFO: renamed from: c.a.l.a.d$a */
    static class a extends C0505b.d {

        /* JADX INFO: renamed from: J */
        int[][] f3158J;

        a(a aVar, C0507d c0507d, Resources resources) {
            super(aVar, c0507d, resources);
            if (aVar != null) {
                this.f3158J = aVar.f3158J;
            } else {
                this.f3158J = new int[m4096f()][];
            }
        }

        /* JADX INFO: renamed from: A */
        int m4117A(int[] iArr) {
            int[][] iArr2 = this.f3158J;
            int iM4098h = m4098h();
            for (int i = 0; i < iM4098h; i++) {
                if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0507d(this, null);
        }

        @Override // p016c.p017a.p020l.p021a.C0505b.d
        /* JADX INFO: renamed from: o */
        public void mo4105o(int i, int i2) {
            super.mo4105o(i, i2);
            int[][] iArr = new int[i2][];
            System.arraycopy(this.f3158J, 0, iArr, 0, i);
            this.f3158J = iArr;
        }

        @Override // p016c.p017a.p020l.p021a.C0505b.d
        /* JADX INFO: renamed from: r */
        void mo4073r() {
            int[][] iArr = this.f3158J;
            int[][] iArr2 = new int[iArr.length][];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr3 = this.f3158J;
                iArr2[length] = iArr3[length] != null ? (int[]) iArr3[length].clone() : null;
            }
            this.f3158J = iArr2;
        }

        /* JADX INFO: renamed from: z */
        int m4118z(int[] iArr, Drawable drawable) {
            int iM4092a = m4092a(drawable);
            this.f3158J[iM4092a] = iArr;
            return iM4092a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0507d(this, resources);
        }
    }

    C0507d(a aVar, Resources resources) {
        mo4059h(new a(aVar, this, resources));
        onStateChange(getState());
    }

    @Override // p016c.p017a.p020l.p021a.C0505b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // p016c.p017a.p020l.p021a.C0505b
    /* JADX INFO: renamed from: h */
    void mo4059h(C0505b.d dVar) {
        super.mo4059h(dVar);
        if (dVar instanceof a) {
            this.f3156n = (a) dVar;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p016c.p017a.p020l.p021a.C0505b
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public a mo4058b() {
        return new a(this.f3156n, this, null);
    }

    /* JADX INFO: renamed from: k */
    int[] m4116k(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i3 = i + 1;
                if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i] = attributeNameResource;
                i = i3;
            }
        }
        return StateSet.trimStateSet(iArr, i);
    }

    @Override // p016c.p017a.p020l.p021a.C0505b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f3157o) {
            super.mutate();
            if (this == this) {
                this.f3156n.mo4073r();
                this.f3157o = true;
            }
        }
        return this;
    }

    @Override // p016c.p017a.p020l.p021a.C0505b, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        int iM4117A = this.f3156n.m4117A(iArr);
        if (iM4117A < 0) {
            iM4117A = this.f3156n.m4117A(StateSet.WILD_CARD);
        }
        return m4083g(iM4117A) || zOnStateChange;
    }

    C0507d(a aVar) {
        if (aVar != null) {
            mo4059h(aVar);
        }
    }
}
