package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.e;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f466d = {0, 4, 8};
    private static SparseIntArray e;
    private HashMap<String, androidx.constraintlayout.widget.a> a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f467b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<Integer, a> f468c = new HashMap<>();

    public static class a {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final C0015d f469b = new C0015d();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final c f470c = new c();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final b f471d = new b();
        public final e e = new e();
        public HashMap<String, androidx.constraintlayout.widget.a> f = new HashMap<>();

        /* JADX INFO: Access modifiers changed from: private */
        public void f(int i, ConstraintLayout.b bVar) {
            this.a = i;
            b bVar2 = this.f471d;
            bVar2.h = bVar.f446d;
            bVar2.i = bVar.e;
            bVar2.j = bVar.f;
            bVar2.k = bVar.g;
            bVar2.l = bVar.h;
            bVar2.m = bVar.i;
            bVar2.n = bVar.j;
            bVar2.o = bVar.k;
            bVar2.p = bVar.l;
            bVar2.q = bVar.p;
            bVar2.r = bVar.q;
            bVar2.s = bVar.r;
            bVar2.t = bVar.s;
            bVar2.u = bVar.z;
            bVar2.v = bVar.A;
            bVar2.w = bVar.B;
            bVar2.x = bVar.m;
            bVar2.y = bVar.n;
            bVar2.z = bVar.o;
            bVar2.A = bVar.P;
            bVar2.B = bVar.Q;
            bVar2.C = bVar.R;
            bVar2.g = bVar.f445c;
            bVar2.e = bVar.a;
            bVar2.f = bVar.f444b;
            bVar2.f473c = ((ViewGroup.MarginLayoutParams) bVar).width;
            bVar2.f474d = ((ViewGroup.MarginLayoutParams) bVar).height;
            bVar2.D = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            bVar2.E = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
            bVar2.F = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            bVar2.G = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
            bVar2.P = bVar.E;
            bVar2.Q = bVar.D;
            bVar2.S = bVar.G;
            bVar2.R = bVar.F;
            bVar2.h0 = bVar.S;
            bVar2.i0 = bVar.T;
            bVar2.T = bVar.H;
            bVar2.U = bVar.I;
            bVar2.V = bVar.L;
            bVar2.W = bVar.M;
            bVar2.X = bVar.J;
            bVar2.Y = bVar.K;
            bVar2.Z = bVar.N;
            bVar2.a0 = bVar.O;
            bVar2.g0 = bVar.U;
            bVar2.K = bVar.u;
            bVar2.M = bVar.w;
            bVar2.J = bVar.t;
            bVar2.L = bVar.v;
            bVar2.O = bVar.x;
            bVar2.N = bVar.y;
            if (Build.VERSION.SDK_INT >= 17) {
                bVar2.H = bVar.getMarginEnd();
                this.f471d.I = bVar.getMarginStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(int i, e.a aVar) {
            f(i, aVar);
            this.f469b.f480d = aVar.o0;
            e eVar = this.e;
            eVar.f481b = aVar.r0;
            eVar.f482c = aVar.s0;
            eVar.f483d = aVar.t0;
            eVar.e = aVar.u0;
            eVar.f = aVar.v0;
            eVar.g = aVar.w0;
            eVar.h = aVar.x0;
            eVar.i = aVar.y0;
            eVar.j = aVar.z0;
            eVar.k = aVar.A0;
            eVar.m = aVar.q0;
            eVar.l = aVar.p0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(androidx.constraintlayout.widget.b bVar, int i, e.a aVar) {
            g(i, aVar);
            if (bVar instanceof Barrier) {
                b bVar2 = this.f471d;
                bVar2.d0 = 1;
                Barrier barrier = (Barrier) bVar;
                bVar2.b0 = barrier.getType();
                this.f471d.e0 = barrier.getReferencedIds();
                this.f471d.c0 = barrier.getMargin();
            }
        }

        public void d(ConstraintLayout.b bVar) {
            b bVar2 = this.f471d;
            bVar.f446d = bVar2.h;
            bVar.e = bVar2.i;
            bVar.f = bVar2.j;
            bVar.g = bVar2.k;
            bVar.h = bVar2.l;
            bVar.i = bVar2.m;
            bVar.j = bVar2.n;
            bVar.k = bVar2.o;
            bVar.l = bVar2.p;
            bVar.p = bVar2.q;
            bVar.q = bVar2.r;
            bVar.r = bVar2.s;
            bVar.s = bVar2.t;
            ((ViewGroup.MarginLayoutParams) bVar).leftMargin = bVar2.D;
            ((ViewGroup.MarginLayoutParams) bVar).rightMargin = bVar2.E;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = bVar2.F;
            ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = bVar2.G;
            bVar.x = bVar2.O;
            bVar.y = bVar2.N;
            bVar.u = bVar2.K;
            bVar.w = bVar2.M;
            bVar.z = bVar2.u;
            bVar.A = bVar2.v;
            bVar.m = bVar2.x;
            bVar.n = bVar2.y;
            bVar.o = bVar2.z;
            bVar.B = bVar2.w;
            bVar.P = bVar2.A;
            bVar.Q = bVar2.B;
            bVar.E = bVar2.P;
            bVar.D = bVar2.Q;
            bVar.G = bVar2.S;
            bVar.F = bVar2.R;
            bVar.S = bVar2.h0;
            bVar.T = bVar2.i0;
            bVar.H = bVar2.T;
            bVar.I = bVar2.U;
            bVar.L = bVar2.V;
            bVar.M = bVar2.W;
            bVar.J = bVar2.X;
            bVar.K = bVar2.Y;
            bVar.N = bVar2.Z;
            bVar.O = bVar2.a0;
            bVar.R = bVar2.C;
            bVar.f445c = bVar2.g;
            bVar.a = bVar2.e;
            bVar.f444b = bVar2.f;
            ((ViewGroup.MarginLayoutParams) bVar).width = bVar2.f473c;
            ((ViewGroup.MarginLayoutParams) bVar).height = bVar2.f474d;
            String str = bVar2.g0;
            if (str != null) {
                bVar.U = str;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                bVar.setMarginStart(this.f471d.I);
                bVar.setMarginEnd(this.f471d.H);
            }
            bVar.a();
        }

        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public a clone() {
            a aVar = new a();
            aVar.f471d.a(this.f471d);
            aVar.f470c.a(this.f470c);
            aVar.f469b.a(this.f469b);
            aVar.e.a(this.e);
            aVar.a = this.a;
            return aVar;
        }
    }

    public static class b {
        private static SparseIntArray k0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f473c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f474d;
        public int[] e0;
        public String f0;
        public String g0;
        public boolean a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f472b = false;
        public int e = -1;
        public int f = -1;
        public float g = -1.0f;
        public int h = -1;
        public int i = -1;
        public int j = -1;
        public int k = -1;
        public int l = -1;
        public int m = -1;
        public int n = -1;
        public int o = -1;
        public int p = -1;
        public int q = -1;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public float u = 0.5f;
        public float v = 0.5f;
        public String w = null;
        public int x = -1;
        public int y = 0;
        public float z = CropImageView.DEFAULT_ASPECT_RATIO;
        public int A = -1;
        public int B = -1;
        public int C = -1;
        public int D = -1;
        public int E = -1;
        public int F = -1;
        public int G = -1;
        public int H = -1;
        public int I = -1;
        public int J = -1;
        public int K = -1;
        public int L = -1;
        public int M = -1;
        public int N = -1;
        public int O = -1;
        public float P = -1.0f;
        public float Q = -1.0f;
        public int R = 0;
        public int S = 0;
        public int T = 0;
        public int U = 0;
        public int V = -1;
        public int W = -1;
        public int X = -1;
        public int Y = -1;
        public float Z = 1.0f;
        public float a0 = 1.0f;
        public int b0 = -1;
        public int c0 = 0;
        public int d0 = -1;
        public boolean h0 = false;
        public boolean i0 = false;
        public boolean j0 = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            k0 = sparseIntArray;
            sparseIntArray.append(i.Layout_layout_constraintLeft_toLeftOf, 24);
            k0.append(i.Layout_layout_constraintLeft_toRightOf, 25);
            k0.append(i.Layout_layout_constraintRight_toLeftOf, 28);
            k0.append(i.Layout_layout_constraintRight_toRightOf, 29);
            k0.append(i.Layout_layout_constraintTop_toTopOf, 35);
            k0.append(i.Layout_layout_constraintTop_toBottomOf, 34);
            k0.append(i.Layout_layout_constraintBottom_toTopOf, 4);
            k0.append(i.Layout_layout_constraintBottom_toBottomOf, 3);
            k0.append(i.Layout_layout_constraintBaseline_toBaselineOf, 1);
            k0.append(i.Layout_layout_editor_absoluteX, 6);
            k0.append(i.Layout_layout_editor_absoluteY, 7);
            k0.append(i.Layout_layout_constraintGuide_begin, 17);
            k0.append(i.Layout_layout_constraintGuide_end, 18);
            k0.append(i.Layout_layout_constraintGuide_percent, 19);
            k0.append(i.Layout_android_orientation, 26);
            k0.append(i.Layout_layout_constraintStart_toEndOf, 31);
            k0.append(i.Layout_layout_constraintStart_toStartOf, 32);
            k0.append(i.Layout_layout_constraintEnd_toStartOf, 10);
            k0.append(i.Layout_layout_constraintEnd_toEndOf, 9);
            k0.append(i.Layout_layout_goneMarginLeft, 13);
            k0.append(i.Layout_layout_goneMarginTop, 16);
            k0.append(i.Layout_layout_goneMarginRight, 14);
            k0.append(i.Layout_layout_goneMarginBottom, 11);
            k0.append(i.Layout_layout_goneMarginStart, 15);
            k0.append(i.Layout_layout_goneMarginEnd, 12);
            k0.append(i.Layout_layout_constraintVertical_weight, 38);
            k0.append(i.Layout_layout_constraintHorizontal_weight, 37);
            k0.append(i.Layout_layout_constraintHorizontal_chainStyle, 39);
            k0.append(i.Layout_layout_constraintVertical_chainStyle, 40);
            k0.append(i.Layout_layout_constraintHorizontal_bias, 20);
            k0.append(i.Layout_layout_constraintVertical_bias, 36);
            k0.append(i.Layout_layout_constraintDimensionRatio, 5);
            k0.append(i.Layout_layout_constraintLeft_creator, 76);
            k0.append(i.Layout_layout_constraintTop_creator, 76);
            k0.append(i.Layout_layout_constraintRight_creator, 76);
            k0.append(i.Layout_layout_constraintBottom_creator, 76);
            k0.append(i.Layout_layout_constraintBaseline_creator, 76);
            k0.append(i.Layout_android_layout_marginLeft, 23);
            k0.append(i.Layout_android_layout_marginRight, 27);
            k0.append(i.Layout_android_layout_marginStart, 30);
            k0.append(i.Layout_android_layout_marginEnd, 8);
            k0.append(i.Layout_android_layout_marginTop, 33);
            k0.append(i.Layout_android_layout_marginBottom, 2);
            k0.append(i.Layout_android_layout_width, 22);
            k0.append(i.Layout_android_layout_height, 21);
            k0.append(i.Layout_layout_constraintCircle, 61);
            k0.append(i.Layout_layout_constraintCircleRadius, 62);
            k0.append(i.Layout_layout_constraintCircleAngle, 63);
            k0.append(i.Layout_layout_constraintWidth_percent, 69);
            k0.append(i.Layout_layout_constraintHeight_percent, 70);
            k0.append(i.Layout_chainUseRtl, 71);
            k0.append(i.Layout_barrierDirection, 72);
            k0.append(i.Layout_barrierMargin, 73);
            k0.append(i.Layout_constraint_referenced_ids, 74);
            k0.append(i.Layout_barrierAllowsGoneWidgets, 75);
        }

        public void a(b bVar) {
            this.a = bVar.a;
            this.f473c = bVar.f473c;
            this.f472b = bVar.f472b;
            this.f474d = bVar.f474d;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
            this.h = bVar.h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
            this.l = bVar.l;
            this.m = bVar.m;
            this.n = bVar.n;
            this.o = bVar.o;
            this.p = bVar.p;
            this.q = bVar.q;
            this.r = bVar.r;
            this.s = bVar.s;
            this.t = bVar.t;
            this.u = bVar.u;
            this.v = bVar.v;
            this.w = bVar.w;
            this.x = bVar.x;
            this.y = bVar.y;
            this.z = bVar.z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            this.H = bVar.H;
            this.I = bVar.I;
            this.J = bVar.J;
            this.K = bVar.K;
            this.L = bVar.L;
            this.M = bVar.M;
            this.N = bVar.N;
            this.O = bVar.O;
            this.P = bVar.P;
            this.Q = bVar.Q;
            this.R = bVar.R;
            this.S = bVar.S;
            this.T = bVar.T;
            this.U = bVar.U;
            this.V = bVar.V;
            this.W = bVar.W;
            this.X = bVar.X;
            this.Y = bVar.Y;
            this.Z = bVar.Z;
            this.a0 = bVar.a0;
            this.b0 = bVar.b0;
            this.c0 = bVar.c0;
            this.d0 = bVar.d0;
            this.g0 = bVar.g0;
            int[] iArr = bVar.e0;
            if (iArr != null) {
                this.e0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.e0 = null;
            }
            this.f0 = bVar.f0;
            this.h0 = bVar.h0;
            this.i0 = bVar.i0;
            this.j0 = bVar.j0;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.Layout);
            this.f472b = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                int i2 = k0.get(index);
                if (i2 == 80) {
                    this.h0 = typedArrayObtainStyledAttributes.getBoolean(index, this.h0);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.p = d.o(typedArrayObtainStyledAttributes, index, this.p);
                            break;
                        case 2:
                            this.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.G);
                            break;
                        case 3:
                            this.o = d.o(typedArrayObtainStyledAttributes, index, this.o);
                            break;
                        case 4:
                            this.n = d.o(typedArrayObtainStyledAttributes, index, this.n);
                            break;
                        case 5:
                            this.w = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case 6:
                            this.A = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.A);
                            break;
                        case 7:
                            this.B = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.B);
                            break;
                        case 8:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                            }
                            break;
                        case 9:
                            this.t = d.o(typedArrayObtainStyledAttributes, index, this.t);
                            break;
                        case 10:
                            this.s = d.o(typedArrayObtainStyledAttributes, index, this.s);
                            break;
                        case 11:
                            this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        case 12:
                            this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                            break;
                        case 13:
                            this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            break;
                        case 14:
                            this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        case 15:
                            this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                            break;
                        case 16:
                            this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        case 17:
                            this.e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.e);
                            break;
                        case 18:
                            this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                            break;
                        case 19:
                            this.g = typedArrayObtainStyledAttributes.getFloat(index, this.g);
                            break;
                        case 20:
                            this.u = typedArrayObtainStyledAttributes.getFloat(index, this.u);
                            break;
                        case 21:
                            this.f474d = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f474d);
                            break;
                        case 22:
                            this.f473c = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f473c);
                            break;
                        case 23:
                            this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.D);
                            break;
                        case 24:
                            this.h = d.o(typedArrayObtainStyledAttributes, index, this.h);
                            break;
                        case 25:
                            this.i = d.o(typedArrayObtainStyledAttributes, index, this.i);
                            break;
                        case 26:
                            this.C = typedArrayObtainStyledAttributes.getInt(index, this.C);
                            break;
                        case 27:
                            this.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.E);
                            break;
                        case 28:
                            this.j = d.o(typedArrayObtainStyledAttributes, index, this.j);
                            break;
                        case 29:
                            this.k = d.o(typedArrayObtainStyledAttributes, index, this.k);
                            break;
                        case 30:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                            }
                            break;
                        case 31:
                            this.q = d.o(typedArrayObtainStyledAttributes, index, this.q);
                            break;
                        case 32:
                            this.r = d.o(typedArrayObtainStyledAttributes, index, this.r);
                            break;
                        case 33:
                            this.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.F);
                            break;
                        case 34:
                            this.m = d.o(typedArrayObtainStyledAttributes, index, this.m);
                            break;
                        case 35:
                            this.l = d.o(typedArrayObtainStyledAttributes, index, this.l);
                            break;
                        case 36:
                            this.v = typedArrayObtainStyledAttributes.getFloat(index, this.v);
                            break;
                        case 37:
                            this.Q = typedArrayObtainStyledAttributes.getFloat(index, this.Q);
                            break;
                        case 38:
                            this.P = typedArrayObtainStyledAttributes.getFloat(index, this.P);
                            break;
                        case 39:
                            this.R = typedArrayObtainStyledAttributes.getInt(index, this.R);
                            break;
                        case 40:
                            this.S = typedArrayObtainStyledAttributes.getInt(index, this.S);
                            break;
                        default:
                            switch (i2) {
                                case 54:
                                    this.T = typedArrayObtainStyledAttributes.getInt(index, this.T);
                                    break;
                                case 55:
                                    this.U = typedArrayObtainStyledAttributes.getInt(index, this.U);
                                    break;
                                case 56:
                                    this.V = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.V);
                                    break;
                                case 57:
                                    this.W = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.W);
                                    break;
                                case 58:
                                    this.X = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.X);
                                    break;
                                case 59:
                                    this.Y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Y);
                                    break;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.x = d.o(typedArrayObtainStyledAttributes, index, this.x);
                                            break;
                                        case 62:
                                            this.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.y);
                                            break;
                                        case 63:
                                            this.z = typedArrayObtainStyledAttributes.getFloat(index, this.z);
                                            break;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.Z = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 70:
                                                    this.a0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 71:
                                                    break;
                                                case 72:
                                                    this.b0 = typedArrayObtainStyledAttributes.getInt(index, this.b0);
                                                    break;
                                                case 73:
                                                    this.c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.c0);
                                                    break;
                                                case 74:
                                                    this.f0 = typedArrayObtainStyledAttributes.getString(index);
                                                    break;
                                                case 75:
                                                    this.j0 = typedArrayObtainStyledAttributes.getBoolean(index, this.j0);
                                                    break;
                                                case 76:
                                                    String str = "unused attribute 0x" + Integer.toHexString(index) + "   " + k0.get(index);
                                                    break;
                                                case 77:
                                                    this.g0 = typedArrayObtainStyledAttributes.getString(index);
                                                    break;
                                                default:
                                                    String str2 = "Unknown attribute 0x" + Integer.toHexString(index) + "   " + k0.get(index);
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                } else {
                    this.i0 = typedArrayObtainStyledAttributes.getBoolean(index, this.i0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class c {
        private static SparseIntArray h;
        public boolean a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f475b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f476c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f477d = -1;
        public int e = 0;
        public float f = Float.NaN;
        public float g = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            h = sparseIntArray;
            sparseIntArray.append(i.Motion_motionPathRotate, 1);
            h.append(i.Motion_pathMotionArc, 2);
            h.append(i.Motion_transitionEasing, 3);
            h.append(i.Motion_drawPath, 4);
            h.append(i.Motion_animate_relativeTo, 5);
            h.append(i.Motion_motionStagger, 6);
        }

        public void a(c cVar) {
            this.a = cVar.a;
            this.f475b = cVar.f475b;
            this.f476c = cVar.f476c;
            this.f477d = cVar.f477d;
            this.e = cVar.e;
            this.g = cVar.g;
            this.f = cVar.f;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.Motion);
            this.a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (h.get(index)) {
                    case 1:
                        this.g = typedArrayObtainStyledAttributes.getFloat(index, this.g);
                        break;
                    case 2:
                        this.f477d = typedArrayObtainStyledAttributes.getInt(index, this.f477d);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.f476c = typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            this.f476c = c.e.a.a.a.a[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        this.e = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f475b = d.o(typedArrayObtainStyledAttributes, index, this.f475b);
                        break;
                    case 6:
                        this.f = typedArrayObtainStyledAttributes.getFloat(index, this.f);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.d$d, reason: collision with other inner class name */
    public static class C0015d {
        public boolean a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f478b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f479c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f480d = 1.0f;
        public float e = Float.NaN;

        public void a(C0015d c0015d) {
            this.a = c0015d.a;
            this.f478b = c0015d.f478b;
            this.f480d = c0015d.f480d;
            this.e = c0015d.e;
            this.f479c = c0015d.f479c;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.PropertySet);
            this.a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == i.PropertySet_android_alpha) {
                    this.f480d = typedArrayObtainStyledAttributes.getFloat(index, this.f480d);
                } else if (index == i.PropertySet_android_visibility) {
                    this.f478b = typedArrayObtainStyledAttributes.getInt(index, this.f478b);
                    this.f478b = d.f466d[this.f478b];
                } else if (index == i.PropertySet_visibilityMode) {
                    this.f479c = typedArrayObtainStyledAttributes.getInt(index, this.f479c);
                } else if (index == i.PropertySet_motionProgress) {
                    this.e = typedArrayObtainStyledAttributes.getFloat(index, this.e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class e {
        private static SparseIntArray n;
        public boolean a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f481b = CropImageView.DEFAULT_ASPECT_RATIO;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f482c = CropImageView.DEFAULT_ASPECT_RATIO;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f483d = CropImageView.DEFAULT_ASPECT_RATIO;
        public float e = 1.0f;
        public float f = 1.0f;
        public float g = Float.NaN;
        public float h = Float.NaN;
        public float i = CropImageView.DEFAULT_ASPECT_RATIO;
        public float j = CropImageView.DEFAULT_ASPECT_RATIO;
        public float k = CropImageView.DEFAULT_ASPECT_RATIO;
        public boolean l = false;
        public float m = CropImageView.DEFAULT_ASPECT_RATIO;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            n = sparseIntArray;
            sparseIntArray.append(i.Transform_android_rotation, 1);
            n.append(i.Transform_android_rotationX, 2);
            n.append(i.Transform_android_rotationY, 3);
            n.append(i.Transform_android_scaleX, 4);
            n.append(i.Transform_android_scaleY, 5);
            n.append(i.Transform_android_transformPivotX, 6);
            n.append(i.Transform_android_transformPivotY, 7);
            n.append(i.Transform_android_translationX, 8);
            n.append(i.Transform_android_translationY, 9);
            n.append(i.Transform_android_translationZ, 10);
            n.append(i.Transform_android_elevation, 11);
        }

        public void a(e eVar) {
            this.a = eVar.a;
            this.f481b = eVar.f481b;
            this.f482c = eVar.f482c;
            this.f483d = eVar.f483d;
            this.e = eVar.e;
            this.f = eVar.f;
            this.g = eVar.g;
            this.h = eVar.h;
            this.i = eVar.i;
            this.j = eVar.j;
            this.k = eVar.k;
            this.l = eVar.l;
            this.m = eVar.m;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.Transform);
            this.a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (n.get(index)) {
                    case 1:
                        this.f481b = typedArrayObtainStyledAttributes.getFloat(index, this.f481b);
                        break;
                    case 2:
                        this.f482c = typedArrayObtainStyledAttributes.getFloat(index, this.f482c);
                        break;
                    case 3:
                        this.f483d = typedArrayObtainStyledAttributes.getFloat(index, this.f483d);
                        break;
                    case 4:
                        this.e = typedArrayObtainStyledAttributes.getFloat(index, this.e);
                        break;
                    case 5:
                        this.f = typedArrayObtainStyledAttributes.getFloat(index, this.f);
                        break;
                    case 6:
                        this.g = typedArrayObtainStyledAttributes.getDimension(index, this.g);
                        break;
                    case 7:
                        this.h = typedArrayObtainStyledAttributes.getDimension(index, this.h);
                        break;
                    case 8:
                        this.i = typedArrayObtainStyledAttributes.getDimension(index, this.i);
                        break;
                    case 9:
                        this.j = typedArrayObtainStyledAttributes.getDimension(index, this.j);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.k = typedArrayObtainStyledAttributes.getDimension(index, this.k);
                        }
                        break;
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.l = true;
                            this.m = typedArrayObtainStyledAttributes.getDimension(index, this.m);
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        e = sparseIntArray;
        sparseIntArray.append(i.Constraint_layout_constraintLeft_toLeftOf, 25);
        e.append(i.Constraint_layout_constraintLeft_toRightOf, 26);
        e.append(i.Constraint_layout_constraintRight_toLeftOf, 29);
        e.append(i.Constraint_layout_constraintRight_toRightOf, 30);
        e.append(i.Constraint_layout_constraintTop_toTopOf, 36);
        e.append(i.Constraint_layout_constraintTop_toBottomOf, 35);
        e.append(i.Constraint_layout_constraintBottom_toTopOf, 4);
        e.append(i.Constraint_layout_constraintBottom_toBottomOf, 3);
        e.append(i.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        e.append(i.Constraint_layout_editor_absoluteX, 6);
        e.append(i.Constraint_layout_editor_absoluteY, 7);
        e.append(i.Constraint_layout_constraintGuide_begin, 17);
        e.append(i.Constraint_layout_constraintGuide_end, 18);
        e.append(i.Constraint_layout_constraintGuide_percent, 19);
        e.append(i.Constraint_android_orientation, 27);
        e.append(i.Constraint_layout_constraintStart_toEndOf, 32);
        e.append(i.Constraint_layout_constraintStart_toStartOf, 33);
        e.append(i.Constraint_layout_constraintEnd_toStartOf, 10);
        e.append(i.Constraint_layout_constraintEnd_toEndOf, 9);
        e.append(i.Constraint_layout_goneMarginLeft, 13);
        e.append(i.Constraint_layout_goneMarginTop, 16);
        e.append(i.Constraint_layout_goneMarginRight, 14);
        e.append(i.Constraint_layout_goneMarginBottom, 11);
        e.append(i.Constraint_layout_goneMarginStart, 15);
        e.append(i.Constraint_layout_goneMarginEnd, 12);
        e.append(i.Constraint_layout_constraintVertical_weight, 40);
        e.append(i.Constraint_layout_constraintHorizontal_weight, 39);
        e.append(i.Constraint_layout_constraintHorizontal_chainStyle, 41);
        e.append(i.Constraint_layout_constraintVertical_chainStyle, 42);
        e.append(i.Constraint_layout_constraintHorizontal_bias, 20);
        e.append(i.Constraint_layout_constraintVertical_bias, 37);
        e.append(i.Constraint_layout_constraintDimensionRatio, 5);
        e.append(i.Constraint_layout_constraintLeft_creator, 82);
        e.append(i.Constraint_layout_constraintTop_creator, 82);
        e.append(i.Constraint_layout_constraintRight_creator, 82);
        e.append(i.Constraint_layout_constraintBottom_creator, 82);
        e.append(i.Constraint_layout_constraintBaseline_creator, 82);
        e.append(i.Constraint_android_layout_marginLeft, 24);
        e.append(i.Constraint_android_layout_marginRight, 28);
        e.append(i.Constraint_android_layout_marginStart, 31);
        e.append(i.Constraint_android_layout_marginEnd, 8);
        e.append(i.Constraint_android_layout_marginTop, 34);
        e.append(i.Constraint_android_layout_marginBottom, 2);
        e.append(i.Constraint_android_layout_width, 23);
        e.append(i.Constraint_android_layout_height, 21);
        e.append(i.Constraint_android_visibility, 22);
        e.append(i.Constraint_android_alpha, 43);
        e.append(i.Constraint_android_elevation, 44);
        e.append(i.Constraint_android_rotationX, 45);
        e.append(i.Constraint_android_rotationY, 46);
        e.append(i.Constraint_android_rotation, 60);
        e.append(i.Constraint_android_scaleX, 47);
        e.append(i.Constraint_android_scaleY, 48);
        e.append(i.Constraint_android_transformPivotX, 49);
        e.append(i.Constraint_android_transformPivotY, 50);
        e.append(i.Constraint_android_translationX, 51);
        e.append(i.Constraint_android_translationY, 52);
        e.append(i.Constraint_android_translationZ, 53);
        e.append(i.Constraint_layout_constraintWidth_default, 54);
        e.append(i.Constraint_layout_constraintHeight_default, 55);
        e.append(i.Constraint_layout_constraintWidth_max, 56);
        e.append(i.Constraint_layout_constraintHeight_max, 57);
        e.append(i.Constraint_layout_constraintWidth_min, 58);
        e.append(i.Constraint_layout_constraintHeight_min, 59);
        e.append(i.Constraint_layout_constraintCircle, 61);
        e.append(i.Constraint_layout_constraintCircleRadius, 62);
        e.append(i.Constraint_layout_constraintCircleAngle, 63);
        e.append(i.Constraint_animate_relativeTo, 64);
        e.append(i.Constraint_transitionEasing, 65);
        e.append(i.Constraint_drawPath, 66);
        e.append(i.Constraint_transitionPathRotate, 67);
        e.append(i.Constraint_motionStagger, 79);
        e.append(i.Constraint_android_id, 38);
        e.append(i.Constraint_motionProgress, 68);
        e.append(i.Constraint_layout_constraintWidth_percent, 69);
        e.append(i.Constraint_layout_constraintHeight_percent, 70);
        e.append(i.Constraint_chainUseRtl, 71);
        e.append(i.Constraint_barrierDirection, 72);
        e.append(i.Constraint_barrierMargin, 73);
        e.append(i.Constraint_constraint_referenced_ids, 74);
        e.append(i.Constraint_barrierAllowsGoneWidgets, 75);
        e.append(i.Constraint_pathMotionArc, 76);
        e.append(i.Constraint_layout_constraintTag, 77);
        e.append(i.Constraint_visibilityMode, 78);
        e.append(i.Constraint_layout_constrainedWidth, 80);
        e.append(i.Constraint_layout_constrainedHeight, 81);
    }

    private int[] j(View view, String str) {
        int iIntValue;
        Object objG;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i = 0;
        int i2 = 0;
        while (i < strArrSplit.length) {
            String strTrim = strArrSplit[i].trim();
            try {
                iIntValue = h.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (objG = ((ConstraintLayout) view.getParent()).g(0, strTrim)) != null && (objG instanceof Integer)) {
                iIntValue = ((Integer) objG).intValue();
            }
            iArr[i2] = iIntValue;
            i++;
            i2++;
        }
        return i2 != strArrSplit.length ? Arrays.copyOf(iArr, i2) : iArr;
    }

    private a k(Context context, AttributeSet attributeSet) {
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.Constraint);
        p(context, aVar, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    private a l(int i) {
        if (!this.f468c.containsKey(Integer.valueOf(i))) {
            this.f468c.put(Integer.valueOf(i), new a());
        }
        return this.f468c.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int o(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    private void p(Context context, a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index != i.Constraint_android_id && i.Constraint_android_layout_marginStart != index && i.Constraint_android_layout_marginEnd != index) {
                aVar.f470c.a = true;
                aVar.f471d.f472b = true;
                aVar.f469b.a = true;
                aVar.e.a = true;
            }
            switch (e.get(index)) {
                case 1:
                    b bVar = aVar.f471d;
                    bVar.p = o(typedArray, index, bVar.p);
                    break;
                case 2:
                    b bVar2 = aVar.f471d;
                    bVar2.G = typedArray.getDimensionPixelSize(index, bVar2.G);
                    break;
                case 3:
                    b bVar3 = aVar.f471d;
                    bVar3.o = o(typedArray, index, bVar3.o);
                    break;
                case 4:
                    b bVar4 = aVar.f471d;
                    bVar4.n = o(typedArray, index, bVar4.n);
                    break;
                case 5:
                    aVar.f471d.w = typedArray.getString(index);
                    break;
                case 6:
                    b bVar5 = aVar.f471d;
                    bVar5.A = typedArray.getDimensionPixelOffset(index, bVar5.A);
                    break;
                case 7:
                    b bVar6 = aVar.f471d;
                    bVar6.B = typedArray.getDimensionPixelOffset(index, bVar6.B);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        b bVar7 = aVar.f471d;
                        bVar7.H = typedArray.getDimensionPixelSize(index, bVar7.H);
                    }
                    break;
                case 9:
                    b bVar8 = aVar.f471d;
                    bVar8.t = o(typedArray, index, bVar8.t);
                    break;
                case 10:
                    b bVar9 = aVar.f471d;
                    bVar9.s = o(typedArray, index, bVar9.s);
                    break;
                case 11:
                    b bVar10 = aVar.f471d;
                    bVar10.M = typedArray.getDimensionPixelSize(index, bVar10.M);
                    break;
                case 12:
                    b bVar11 = aVar.f471d;
                    bVar11.N = typedArray.getDimensionPixelSize(index, bVar11.N);
                    break;
                case 13:
                    b bVar12 = aVar.f471d;
                    bVar12.J = typedArray.getDimensionPixelSize(index, bVar12.J);
                    break;
                case 14:
                    b bVar13 = aVar.f471d;
                    bVar13.L = typedArray.getDimensionPixelSize(index, bVar13.L);
                    break;
                case 15:
                    b bVar14 = aVar.f471d;
                    bVar14.O = typedArray.getDimensionPixelSize(index, bVar14.O);
                    break;
                case 16:
                    b bVar15 = aVar.f471d;
                    bVar15.K = typedArray.getDimensionPixelSize(index, bVar15.K);
                    break;
                case 17:
                    b bVar16 = aVar.f471d;
                    bVar16.e = typedArray.getDimensionPixelOffset(index, bVar16.e);
                    break;
                case 18:
                    b bVar17 = aVar.f471d;
                    bVar17.f = typedArray.getDimensionPixelOffset(index, bVar17.f);
                    break;
                case 19:
                    b bVar18 = aVar.f471d;
                    bVar18.g = typedArray.getFloat(index, bVar18.g);
                    break;
                case 20:
                    b bVar19 = aVar.f471d;
                    bVar19.u = typedArray.getFloat(index, bVar19.u);
                    break;
                case 21:
                    b bVar20 = aVar.f471d;
                    bVar20.f474d = typedArray.getLayoutDimension(index, bVar20.f474d);
                    break;
                case 22:
                    C0015d c0015d = aVar.f469b;
                    c0015d.f478b = typedArray.getInt(index, c0015d.f478b);
                    C0015d c0015d2 = aVar.f469b;
                    c0015d2.f478b = f466d[c0015d2.f478b];
                    break;
                case 23:
                    b bVar21 = aVar.f471d;
                    bVar21.f473c = typedArray.getLayoutDimension(index, bVar21.f473c);
                    break;
                case 24:
                    b bVar22 = aVar.f471d;
                    bVar22.D = typedArray.getDimensionPixelSize(index, bVar22.D);
                    break;
                case 25:
                    b bVar23 = aVar.f471d;
                    bVar23.h = o(typedArray, index, bVar23.h);
                    break;
                case 26:
                    b bVar24 = aVar.f471d;
                    bVar24.i = o(typedArray, index, bVar24.i);
                    break;
                case 27:
                    b bVar25 = aVar.f471d;
                    bVar25.C = typedArray.getInt(index, bVar25.C);
                    break;
                case 28:
                    b bVar26 = aVar.f471d;
                    bVar26.E = typedArray.getDimensionPixelSize(index, bVar26.E);
                    break;
                case 29:
                    b bVar27 = aVar.f471d;
                    bVar27.j = o(typedArray, index, bVar27.j);
                    break;
                case 30:
                    b bVar28 = aVar.f471d;
                    bVar28.k = o(typedArray, index, bVar28.k);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        b bVar29 = aVar.f471d;
                        bVar29.I = typedArray.getDimensionPixelSize(index, bVar29.I);
                    }
                    break;
                case 32:
                    b bVar30 = aVar.f471d;
                    bVar30.q = o(typedArray, index, bVar30.q);
                    break;
                case 33:
                    b bVar31 = aVar.f471d;
                    bVar31.r = o(typedArray, index, bVar31.r);
                    break;
                case 34:
                    b bVar32 = aVar.f471d;
                    bVar32.F = typedArray.getDimensionPixelSize(index, bVar32.F);
                    break;
                case 35:
                    b bVar33 = aVar.f471d;
                    bVar33.m = o(typedArray, index, bVar33.m);
                    break;
                case 36:
                    b bVar34 = aVar.f471d;
                    bVar34.l = o(typedArray, index, bVar34.l);
                    break;
                case 37:
                    b bVar35 = aVar.f471d;
                    bVar35.v = typedArray.getFloat(index, bVar35.v);
                    break;
                case 38:
                    aVar.a = typedArray.getResourceId(index, aVar.a);
                    break;
                case 39:
                    b bVar36 = aVar.f471d;
                    bVar36.Q = typedArray.getFloat(index, bVar36.Q);
                    break;
                case 40:
                    b bVar37 = aVar.f471d;
                    bVar37.P = typedArray.getFloat(index, bVar37.P);
                    break;
                case 41:
                    b bVar38 = aVar.f471d;
                    bVar38.R = typedArray.getInt(index, bVar38.R);
                    break;
                case 42:
                    b bVar39 = aVar.f471d;
                    bVar39.S = typedArray.getInt(index, bVar39.S);
                    break;
                case 43:
                    C0015d c0015d3 = aVar.f469b;
                    c0015d3.f480d = typedArray.getFloat(index, c0015d3.f480d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        e eVar = aVar.e;
                        eVar.l = true;
                        eVar.m = typedArray.getDimension(index, eVar.m);
                    }
                    break;
                case 45:
                    e eVar2 = aVar.e;
                    eVar2.f482c = typedArray.getFloat(index, eVar2.f482c);
                    break;
                case 46:
                    e eVar3 = aVar.e;
                    eVar3.f483d = typedArray.getFloat(index, eVar3.f483d);
                    break;
                case 47:
                    e eVar4 = aVar.e;
                    eVar4.e = typedArray.getFloat(index, eVar4.e);
                    break;
                case 48:
                    e eVar5 = aVar.e;
                    eVar5.f = typedArray.getFloat(index, eVar5.f);
                    break;
                case 49:
                    e eVar6 = aVar.e;
                    eVar6.g = typedArray.getDimension(index, eVar6.g);
                    break;
                case 50:
                    e eVar7 = aVar.e;
                    eVar7.h = typedArray.getDimension(index, eVar7.h);
                    break;
                case 51:
                    e eVar8 = aVar.e;
                    eVar8.i = typedArray.getDimension(index, eVar8.i);
                    break;
                case 52:
                    e eVar9 = aVar.e;
                    eVar9.j = typedArray.getDimension(index, eVar9.j);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        e eVar10 = aVar.e;
                        eVar10.k = typedArray.getDimension(index, eVar10.k);
                    }
                    break;
                case 54:
                    b bVar40 = aVar.f471d;
                    bVar40.T = typedArray.getInt(index, bVar40.T);
                    break;
                case 55:
                    b bVar41 = aVar.f471d;
                    bVar41.U = typedArray.getInt(index, bVar41.U);
                    break;
                case 56:
                    b bVar42 = aVar.f471d;
                    bVar42.V = typedArray.getDimensionPixelSize(index, bVar42.V);
                    break;
                case 57:
                    b bVar43 = aVar.f471d;
                    bVar43.W = typedArray.getDimensionPixelSize(index, bVar43.W);
                    break;
                case 58:
                    b bVar44 = aVar.f471d;
                    bVar44.X = typedArray.getDimensionPixelSize(index, bVar44.X);
                    break;
                case 59:
                    b bVar45 = aVar.f471d;
                    bVar45.Y = typedArray.getDimensionPixelSize(index, bVar45.Y);
                    break;
                case 60:
                    e eVar11 = aVar.e;
                    eVar11.f481b = typedArray.getFloat(index, eVar11.f481b);
                    break;
                case 61:
                    b bVar46 = aVar.f471d;
                    bVar46.x = o(typedArray, index, bVar46.x);
                    break;
                case 62:
                    b bVar47 = aVar.f471d;
                    bVar47.y = typedArray.getDimensionPixelSize(index, bVar47.y);
                    break;
                case 63:
                    b bVar48 = aVar.f471d;
                    bVar48.z = typedArray.getFloat(index, bVar48.z);
                    break;
                case 64:
                    c cVar = aVar.f470c;
                    cVar.f475b = o(typedArray, index, cVar.f475b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.f470c.f476c = typedArray.getString(index);
                    } else {
                        aVar.f470c.f476c = c.e.a.a.a.a[typedArray.getInteger(index, 0)];
                    }
                    break;
                case 66:
                    aVar.f470c.e = typedArray.getInt(index, 0);
                    break;
                case 67:
                    c cVar2 = aVar.f470c;
                    cVar2.g = typedArray.getFloat(index, cVar2.g);
                    break;
                case 68:
                    C0015d c0015d4 = aVar.f469b;
                    c0015d4.e = typedArray.getFloat(index, c0015d4.e);
                    break;
                case 69:
                    aVar.f471d.Z = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.f471d.a0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    break;
                case 72:
                    b bVar49 = aVar.f471d;
                    bVar49.b0 = typedArray.getInt(index, bVar49.b0);
                    break;
                case 73:
                    b bVar50 = aVar.f471d;
                    bVar50.c0 = typedArray.getDimensionPixelSize(index, bVar50.c0);
                    break;
                case 74:
                    aVar.f471d.f0 = typedArray.getString(index);
                    break;
                case 75:
                    b bVar51 = aVar.f471d;
                    bVar51.j0 = typedArray.getBoolean(index, bVar51.j0);
                    break;
                case 76:
                    c cVar3 = aVar.f470c;
                    cVar3.f477d = typedArray.getInt(index, cVar3.f477d);
                    break;
                case 77:
                    aVar.f471d.g0 = typedArray.getString(index);
                    break;
                case 78:
                    C0015d c0015d5 = aVar.f469b;
                    c0015d5.f479c = typedArray.getInt(index, c0015d5.f479c);
                    break;
                case 79:
                    c cVar4 = aVar.f470c;
                    cVar4.f = typedArray.getFloat(index, cVar4.f);
                    break;
                case 80:
                    b bVar52 = aVar.f471d;
                    bVar52.h0 = typedArray.getBoolean(index, bVar52.h0);
                    break;
                case 81:
                    b bVar53 = aVar.f471d;
                    bVar53.i0 = typedArray.getBoolean(index, bVar53.i0);
                    break;
                case 82:
                    String str = "unused attribute 0x" + Integer.toHexString(index) + "   " + e.get(index);
                    break;
                default:
                    String str2 = "Unknown attribute 0x" + Integer.toHexString(index) + "   " + e.get(index);
                    break;
            }
        }
    }

    public void c(ConstraintLayout constraintLayout) {
        d(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    void d(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.f468c.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f468c.containsKey(Integer.valueOf(id))) {
                String str = "id unknown " + c.e.a.b.a.a(childAt);
            } else {
                if (this.f467b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (this.f468c.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        a aVar = this.f468c.get(Integer.valueOf(id));
                        if (childAt instanceof Barrier) {
                            aVar.f471d.d0 = 1;
                        }
                        int i2 = aVar.f471d.d0;
                        if (i2 != -1 && i2 == 1) {
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(aVar.f471d.b0);
                            barrier.setMargin(aVar.f471d.c0);
                            barrier.setAllowsGoneWidget(aVar.f471d.j0);
                            b bVar = aVar.f471d;
                            int[] iArr = bVar.e0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str2 = bVar.f0;
                                if (str2 != null) {
                                    bVar.e0 = j(barrier, str2);
                                    barrier.setReferencedIds(aVar.f471d.e0);
                                }
                            }
                        }
                        ConstraintLayout.b bVar2 = (ConstraintLayout.b) childAt.getLayoutParams();
                        bVar2.a();
                        aVar.d(bVar2);
                        if (z) {
                            androidx.constraintlayout.widget.a.c(childAt, aVar.f);
                        }
                        childAt.setLayoutParams(bVar2);
                        C0015d c0015d = aVar.f469b;
                        if (c0015d.f479c == 0) {
                            childAt.setVisibility(c0015d.f478b);
                        }
                        if (Build.VERSION.SDK_INT >= 17) {
                            childAt.setAlpha(aVar.f469b.f480d);
                            childAt.setRotation(aVar.e.f481b);
                            childAt.setRotationX(aVar.e.f482c);
                            childAt.setRotationY(aVar.e.f483d);
                            childAt.setScaleX(aVar.e.e);
                            childAt.setScaleY(aVar.e.f);
                            if (!Float.isNaN(aVar.e.g)) {
                                childAt.setPivotX(aVar.e.g);
                            }
                            if (!Float.isNaN(aVar.e.h)) {
                                childAt.setPivotY(aVar.e.h);
                            }
                            childAt.setTranslationX(aVar.e.i);
                            childAt.setTranslationY(aVar.e.j);
                            if (Build.VERSION.SDK_INT >= 21) {
                                childAt.setTranslationZ(aVar.e.k);
                                e eVar = aVar.e;
                                if (eVar.l) {
                                    childAt.setElevation(eVar.m);
                                }
                            }
                        }
                    } else {
                        String str3 = "WARNING NO CONSTRAINTS for view " + id;
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            a aVar2 = this.f468c.get(num);
            int i3 = aVar2.f471d.d0;
            if (i3 != -1 && i3 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                b bVar3 = aVar2.f471d;
                int[] iArr2 = bVar3.e0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str4 = bVar3.f0;
                    if (str4 != null) {
                        bVar3.e0 = j(barrier2, str4);
                        barrier2.setReferencedIds(aVar2.f471d.e0);
                    }
                }
                barrier2.setType(aVar2.f471d.b0);
                barrier2.setMargin(aVar2.f471d.c0);
                ConstraintLayout.b bVarGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.n();
                aVar2.d(bVarGenerateDefaultLayoutParams);
                constraintLayout.addView(barrier2, bVarGenerateDefaultLayoutParams);
            }
            if (aVar2.f471d.a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.b bVarGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                aVar2.d(bVarGenerateDefaultLayoutParams2);
                constraintLayout.addView(guideline, bVarGenerateDefaultLayoutParams2);
            }
        }
    }

    public void e(int i, int i2) {
        if (this.f468c.containsKey(Integer.valueOf(i))) {
            a aVar = this.f468c.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    b bVar = aVar.f471d;
                    bVar.i = -1;
                    bVar.h = -1;
                    bVar.D = -1;
                    bVar.J = -1;
                    return;
                case 2:
                    b bVar2 = aVar.f471d;
                    bVar2.k = -1;
                    bVar2.j = -1;
                    bVar2.E = -1;
                    bVar2.L = -1;
                    return;
                case 3:
                    b bVar3 = aVar.f471d;
                    bVar3.m = -1;
                    bVar3.l = -1;
                    bVar3.F = -1;
                    bVar3.K = -1;
                    return;
                case 4:
                    b bVar4 = aVar.f471d;
                    bVar4.n = -1;
                    bVar4.o = -1;
                    bVar4.G = -1;
                    bVar4.M = -1;
                    return;
                case 5:
                    aVar.f471d.p = -1;
                    return;
                case 6:
                    b bVar5 = aVar.f471d;
                    bVar5.q = -1;
                    bVar5.r = -1;
                    bVar5.I = -1;
                    bVar5.O = -1;
                    return;
                case 7:
                    b bVar6 = aVar.f471d;
                    bVar6.s = -1;
                    bVar6.t = -1;
                    bVar6.H = -1;
                    bVar6.N = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    public void f(Context context, int i) {
        g((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    public void g(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f468c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f467b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f468c.containsKey(Integer.valueOf(id))) {
                this.f468c.put(Integer.valueOf(id), new a());
            }
            a aVar = this.f468c.get(Integer.valueOf(id));
            aVar.f = androidx.constraintlayout.widget.a.a(this.a, childAt);
            aVar.f(id, bVar);
            aVar.f469b.f478b = childAt.getVisibility();
            if (Build.VERSION.SDK_INT >= 17) {
                aVar.f469b.f480d = childAt.getAlpha();
                aVar.e.f481b = childAt.getRotation();
                aVar.e.f482c = childAt.getRotationX();
                aVar.e.f483d = childAt.getRotationY();
                aVar.e.e = childAt.getScaleX();
                aVar.e.f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    e eVar = aVar.e;
                    eVar.g = pivotX;
                    eVar.h = pivotY;
                }
                aVar.e.i = childAt.getTranslationX();
                aVar.e.j = childAt.getTranslationY();
                if (Build.VERSION.SDK_INT >= 21) {
                    aVar.e.k = childAt.getTranslationZ();
                    e eVar2 = aVar.e;
                    if (eVar2.l) {
                        eVar2.m = childAt.getElevation();
                    }
                }
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                aVar.f471d.j0 = barrier.o();
                aVar.f471d.e0 = barrier.getReferencedIds();
                aVar.f471d.b0 = barrier.getType();
                aVar.f471d.c0 = barrier.getMargin();
            }
        }
    }

    public void h(androidx.constraintlayout.widget.e eVar) {
        int childCount = eVar.getChildCount();
        this.f468c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = eVar.getChildAt(i);
            e.a aVar = (e.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f467b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f468c.containsKey(Integer.valueOf(id))) {
                this.f468c.put(Integer.valueOf(id), new a());
            }
            a aVar2 = this.f468c.get(Integer.valueOf(id));
            if (childAt instanceof androidx.constraintlayout.widget.b) {
                aVar2.h((androidx.constraintlayout.widget.b) childAt, id, aVar);
            }
            aVar2.g(id, aVar);
        }
    }

    public void i(int i, int i2, int i3, float f) {
        b bVar = l(i).f471d;
        bVar.x = i2;
        bVar.y = i3;
        bVar.z = f;
    }

    public void m(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a aVarK = k(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        aVarK.f471d.a = true;
                    }
                    this.f468c.put(Integer.valueOf(aVarK.a), aVarK);
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x017b, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void n(Context context, XmlPullParser xmlPullParser) {
        a aVarK;
        try {
            int eventType = xmlPullParser.getEventType();
            a aVar = null;
            while (eventType != 1) {
                if (eventType != 0) {
                    byte b2 = 3;
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        switch (name.hashCode()) {
                            case -2025855158:
                                b2 = !name.equals("Layout") ? (byte) -1 : (byte) 5;
                                break;
                            case -1984451626:
                                if (name.equals("Motion")) {
                                    b2 = 6;
                                    break;
                                }
                                break;
                            case -1269513683:
                                if (name.equals("PropertySet")) {
                                    break;
                                }
                                break;
                            case -1238332596:
                                if (name.equals("Transform")) {
                                    b2 = 4;
                                    break;
                                }
                                break;
                            case -71750448:
                                if (name.equals("Guideline")) {
                                    b2 = 1;
                                    break;
                                }
                                break;
                            case 1331510167:
                                if (name.equals("Barrier")) {
                                    b2 = 2;
                                    break;
                                }
                                break;
                            case 1791837707:
                                if (name.equals("CustomAttribute")) {
                                    b2 = 7;
                                    break;
                                }
                                break;
                            case 1803088381:
                                if (name.equals("Constraint")) {
                                    b2 = 0;
                                    break;
                                }
                                break;
                            default:
                                break;
                        }
                        switch (b2) {
                            case 0:
                                aVarK = k(context, Xml.asAttributeSet(xmlPullParser));
                                break;
                            case 1:
                                aVarK = k(context, Xml.asAttributeSet(xmlPullParser));
                                aVarK.f471d.a = true;
                                aVarK.f471d.f472b = true;
                                break;
                            case 2:
                                aVarK = k(context, Xml.asAttributeSet(xmlPullParser));
                                aVarK.f471d.d0 = 1;
                                break;
                            case 3:
                                if (aVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                aVar.f469b.b(context, Xml.asAttributeSet(xmlPullParser));
                                continue;
                                break;
                            case 4:
                                if (aVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                aVar.e.b(context, Xml.asAttributeSet(xmlPullParser));
                                continue;
                                break;
                            case 5:
                                if (aVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                aVar.f471d.b(context, Xml.asAttributeSet(xmlPullParser));
                                continue;
                                break;
                            case 6:
                                if (aVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                aVar.f470c.b(context, Xml.asAttributeSet(xmlPullParser));
                                continue;
                                break;
                            case 7:
                                if (aVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                androidx.constraintlayout.widget.a.b(context, xmlPullParser, aVar.f);
                                continue;
                                break;
                        }
                        aVar = aVarK;
                    } else if (eventType != 3) {
                        continue;
                    } else {
                        String name2 = xmlPullParser.getName();
                        if ("ConstraintSet".equals(name2)) {
                            return;
                        }
                        if (name2.equalsIgnoreCase("Constraint")) {
                            this.f468c.put(Integer.valueOf(aVar.a), aVar);
                            aVar = null;
                        }
                    }
                } else {
                    xmlPullParser.getName();
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }
}
