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
import androidx.constraintlayout.widget.C0213e;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p016c.p033e.p034a.p035a.C0542a;
import p016c.p033e.p034a.p036b.C0543a;

/* JADX INFO: renamed from: androidx.constraintlayout.widget.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0212d {

    /* JADX INFO: renamed from: d */
    private static final int[] f1535d = {0, 4, 8};

    /* JADX INFO: renamed from: e */
    private static SparseIntArray f1536e;

    /* JADX INFO: renamed from: a */
    private HashMap<String, C0209a> f1537a = new HashMap<>();

    /* JADX INFO: renamed from: b */
    private boolean f1538b = true;

    /* JADX INFO: renamed from: c */
    private HashMap<Integer, a> f1539c = new HashMap<>();

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.d$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        int f1540a;

        /* JADX INFO: renamed from: b */
        public final d f1541b = new d();

        /* JADX INFO: renamed from: c */
        public final c f1542c = new c();

        /* JADX INFO: renamed from: d */
        public final b f1543d = new b();

        /* JADX INFO: renamed from: e */
        public final e f1544e = new e();

        /* JADX INFO: renamed from: f */
        public HashMap<String, C0209a> f1545f = new HashMap<>();

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: f */
        public void m1507f(int i, ConstraintLayout.C0207b c0207b) {
            this.f1540a = i;
            b bVar = this.f1543d;
            bVar.f1587h = c0207b.f1456d;
            bVar.f1589i = c0207b.f1458e;
            bVar.f1591j = c0207b.f1460f;
            bVar.f1593k = c0207b.f1462g;
            bVar.f1594l = c0207b.f1464h;
            bVar.f1595m = c0207b.f1466i;
            bVar.f1596n = c0207b.f1468j;
            bVar.f1597o = c0207b.f1470k;
            bVar.f1598p = c0207b.f1472l;
            bVar.f1599q = c0207b.f1479p;
            bVar.f1600r = c0207b.f1480q;
            bVar.f1601s = c0207b.f1481r;
            bVar.f1602t = c0207b.f1482s;
            bVar.f1603u = c0207b.f1489z;
            bVar.f1604v = c0207b.f1424A;
            bVar.f1605w = c0207b.f1425B;
            bVar.f1606x = c0207b.f1474m;
            bVar.f1607y = c0207b.f1476n;
            bVar.f1608z = c0207b.f1478o;
            bVar.f1547A = c0207b.f1439P;
            bVar.f1548B = c0207b.f1440Q;
            bVar.f1549C = c0207b.f1441R;
            bVar.f1585g = c0207b.f1454c;
            bVar.f1581e = c0207b.f1450a;
            bVar.f1583f = c0207b.f1452b;
            bVar.f1577c = ((ViewGroup.MarginLayoutParams) c0207b).width;
            bVar.f1579d = ((ViewGroup.MarginLayoutParams) c0207b).height;
            bVar.f1550D = ((ViewGroup.MarginLayoutParams) c0207b).leftMargin;
            bVar.f1551E = ((ViewGroup.MarginLayoutParams) c0207b).rightMargin;
            bVar.f1552F = ((ViewGroup.MarginLayoutParams) c0207b).topMargin;
            bVar.f1553G = ((ViewGroup.MarginLayoutParams) c0207b).bottomMargin;
            bVar.f1562P = c0207b.f1428E;
            bVar.f1563Q = c0207b.f1427D;
            bVar.f1565S = c0207b.f1430G;
            bVar.f1564R = c0207b.f1429F;
            bVar.f1588h0 = c0207b.f1442S;
            bVar.f1590i0 = c0207b.f1443T;
            bVar.f1566T = c0207b.f1431H;
            bVar.f1567U = c0207b.f1432I;
            bVar.f1568V = c0207b.f1435L;
            bVar.f1569W = c0207b.f1436M;
            bVar.f1570X = c0207b.f1433J;
            bVar.f1571Y = c0207b.f1434K;
            bVar.f1572Z = c0207b.f1437N;
            bVar.f1574a0 = c0207b.f1438O;
            bVar.f1586g0 = c0207b.f1444U;
            bVar.f1557K = c0207b.f1484u;
            bVar.f1559M = c0207b.f1486w;
            bVar.f1556J = c0207b.f1483t;
            bVar.f1558L = c0207b.f1485v;
            bVar.f1561O = c0207b.f1487x;
            bVar.f1560N = c0207b.f1488y;
            if (Build.VERSION.SDK_INT >= 17) {
                bVar.f1554H = c0207b.getMarginEnd();
                this.f1543d.f1555I = c0207b.getMarginStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: g */
        public void m1508g(int i, C0213e.a aVar) {
            m1507f(i, aVar);
            this.f1541b.f1620d = aVar.f1638o0;
            e eVar = this.f1544e;
            eVar.f1624b = aVar.f1641r0;
            eVar.f1625c = aVar.f1642s0;
            eVar.f1626d = aVar.f1643t0;
            eVar.f1627e = aVar.f1644u0;
            eVar.f1628f = aVar.f1645v0;
            eVar.f1629g = aVar.f1646w0;
            eVar.f1630h = aVar.f1647x0;
            eVar.f1631i = aVar.f1648y0;
            eVar.f1632j = aVar.f1649z0;
            eVar.f1633k = aVar.f1637A0;
            eVar.f1635m = aVar.f1640q0;
            eVar.f1634l = aVar.f1639p0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: h */
        public void m1509h(AbstractC0210b abstractC0210b, int i, C0213e.a aVar) {
            m1508g(i, aVar);
            if (abstractC0210b instanceof Barrier) {
                b bVar = this.f1543d;
                bVar.f1580d0 = 1;
                Barrier barrier = (Barrier) abstractC0210b;
                bVar.f1576b0 = barrier.getType();
                this.f1543d.f1582e0 = barrier.getReferencedIds();
                this.f1543d.f1578c0 = barrier.getMargin();
            }
        }

        /* JADX INFO: renamed from: d */
        public void m1510d(ConstraintLayout.C0207b c0207b) {
            b bVar = this.f1543d;
            c0207b.f1456d = bVar.f1587h;
            c0207b.f1458e = bVar.f1589i;
            c0207b.f1460f = bVar.f1591j;
            c0207b.f1462g = bVar.f1593k;
            c0207b.f1464h = bVar.f1594l;
            c0207b.f1466i = bVar.f1595m;
            c0207b.f1468j = bVar.f1596n;
            c0207b.f1470k = bVar.f1597o;
            c0207b.f1472l = bVar.f1598p;
            c0207b.f1479p = bVar.f1599q;
            c0207b.f1480q = bVar.f1600r;
            c0207b.f1481r = bVar.f1601s;
            c0207b.f1482s = bVar.f1602t;
            ((ViewGroup.MarginLayoutParams) c0207b).leftMargin = bVar.f1550D;
            ((ViewGroup.MarginLayoutParams) c0207b).rightMargin = bVar.f1551E;
            ((ViewGroup.MarginLayoutParams) c0207b).topMargin = bVar.f1552F;
            ((ViewGroup.MarginLayoutParams) c0207b).bottomMargin = bVar.f1553G;
            c0207b.f1487x = bVar.f1561O;
            c0207b.f1488y = bVar.f1560N;
            c0207b.f1484u = bVar.f1557K;
            c0207b.f1486w = bVar.f1559M;
            c0207b.f1489z = bVar.f1603u;
            c0207b.f1424A = bVar.f1604v;
            c0207b.f1474m = bVar.f1606x;
            c0207b.f1476n = bVar.f1607y;
            c0207b.f1478o = bVar.f1608z;
            c0207b.f1425B = bVar.f1605w;
            c0207b.f1439P = bVar.f1547A;
            c0207b.f1440Q = bVar.f1548B;
            c0207b.f1428E = bVar.f1562P;
            c0207b.f1427D = bVar.f1563Q;
            c0207b.f1430G = bVar.f1565S;
            c0207b.f1429F = bVar.f1564R;
            c0207b.f1442S = bVar.f1588h0;
            c0207b.f1443T = bVar.f1590i0;
            c0207b.f1431H = bVar.f1566T;
            c0207b.f1432I = bVar.f1567U;
            c0207b.f1435L = bVar.f1568V;
            c0207b.f1436M = bVar.f1569W;
            c0207b.f1433J = bVar.f1570X;
            c0207b.f1434K = bVar.f1571Y;
            c0207b.f1437N = bVar.f1572Z;
            c0207b.f1438O = bVar.f1574a0;
            c0207b.f1441R = bVar.f1549C;
            c0207b.f1454c = bVar.f1585g;
            c0207b.f1450a = bVar.f1581e;
            c0207b.f1452b = bVar.f1583f;
            ((ViewGroup.MarginLayoutParams) c0207b).width = bVar.f1577c;
            ((ViewGroup.MarginLayoutParams) c0207b).height = bVar.f1579d;
            String str = bVar.f1586g0;
            if (str != null) {
                c0207b.f1444U = str;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                c0207b.setMarginStart(this.f1543d.f1555I);
                c0207b.setMarginEnd(this.f1543d.f1554H);
            }
            c0207b.m1463a();
        }

        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public a clone() {
            a aVar = new a();
            aVar.f1543d.m1512a(this.f1543d);
            aVar.f1542c.m1514a(this.f1542c);
            aVar.f1541b.m1516a(this.f1541b);
            aVar.f1544e.m1518a(this.f1544e);
            aVar.f1540a = this.f1540a;
            return aVar;
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.d$b */
    public static class b {

        /* JADX INFO: renamed from: k0 */
        private static SparseIntArray f1546k0;

        /* JADX INFO: renamed from: c */
        public int f1577c;

        /* JADX INFO: renamed from: d */
        public int f1579d;

        /* JADX INFO: renamed from: e0 */
        public int[] f1582e0;

        /* JADX INFO: renamed from: f0 */
        public String f1584f0;

        /* JADX INFO: renamed from: g0 */
        public String f1586g0;

        /* JADX INFO: renamed from: a */
        public boolean f1573a = false;

        /* JADX INFO: renamed from: b */
        public boolean f1575b = false;

        /* JADX INFO: renamed from: e */
        public int f1581e = -1;

        /* JADX INFO: renamed from: f */
        public int f1583f = -1;

        /* JADX INFO: renamed from: g */
        public float f1585g = -1.0f;

        /* JADX INFO: renamed from: h */
        public int f1587h = -1;

        /* JADX INFO: renamed from: i */
        public int f1589i = -1;

        /* JADX INFO: renamed from: j */
        public int f1591j = -1;

        /* JADX INFO: renamed from: k */
        public int f1593k = -1;

        /* JADX INFO: renamed from: l */
        public int f1594l = -1;

        /* JADX INFO: renamed from: m */
        public int f1595m = -1;

        /* JADX INFO: renamed from: n */
        public int f1596n = -1;

        /* JADX INFO: renamed from: o */
        public int f1597o = -1;

        /* JADX INFO: renamed from: p */
        public int f1598p = -1;

        /* JADX INFO: renamed from: q */
        public int f1599q = -1;

        /* JADX INFO: renamed from: r */
        public int f1600r = -1;

        /* JADX INFO: renamed from: s */
        public int f1601s = -1;

        /* JADX INFO: renamed from: t */
        public int f1602t = -1;

        /* JADX INFO: renamed from: u */
        public float f1603u = 0.5f;

        /* JADX INFO: renamed from: v */
        public float f1604v = 0.5f;

        /* JADX INFO: renamed from: w */
        public String f1605w = null;

        /* JADX INFO: renamed from: x */
        public int f1606x = -1;

        /* JADX INFO: renamed from: y */
        public int f1607y = 0;

        /* JADX INFO: renamed from: z */
        public float f1608z = CropImageView.DEFAULT_ASPECT_RATIO;

        /* JADX INFO: renamed from: A */
        public int f1547A = -1;

        /* JADX INFO: renamed from: B */
        public int f1548B = -1;

        /* JADX INFO: renamed from: C */
        public int f1549C = -1;

        /* JADX INFO: renamed from: D */
        public int f1550D = -1;

        /* JADX INFO: renamed from: E */
        public int f1551E = -1;

        /* JADX INFO: renamed from: F */
        public int f1552F = -1;

        /* JADX INFO: renamed from: G */
        public int f1553G = -1;

        /* JADX INFO: renamed from: H */
        public int f1554H = -1;

        /* JADX INFO: renamed from: I */
        public int f1555I = -1;

        /* JADX INFO: renamed from: J */
        public int f1556J = -1;

        /* JADX INFO: renamed from: K */
        public int f1557K = -1;

        /* JADX INFO: renamed from: L */
        public int f1558L = -1;

        /* JADX INFO: renamed from: M */
        public int f1559M = -1;

        /* JADX INFO: renamed from: N */
        public int f1560N = -1;

        /* JADX INFO: renamed from: O */
        public int f1561O = -1;

        /* JADX INFO: renamed from: P */
        public float f1562P = -1.0f;

        /* JADX INFO: renamed from: Q */
        public float f1563Q = -1.0f;

        /* JADX INFO: renamed from: R */
        public int f1564R = 0;

        /* JADX INFO: renamed from: S */
        public int f1565S = 0;

        /* JADX INFO: renamed from: T */
        public int f1566T = 0;

        /* JADX INFO: renamed from: U */
        public int f1567U = 0;

        /* JADX INFO: renamed from: V */
        public int f1568V = -1;

        /* JADX INFO: renamed from: W */
        public int f1569W = -1;

        /* JADX INFO: renamed from: X */
        public int f1570X = -1;

        /* JADX INFO: renamed from: Y */
        public int f1571Y = -1;

        /* JADX INFO: renamed from: Z */
        public float f1572Z = 1.0f;

        /* JADX INFO: renamed from: a0 */
        public float f1574a0 = 1.0f;

        /* JADX INFO: renamed from: b0 */
        public int f1576b0 = -1;

        /* JADX INFO: renamed from: c0 */
        public int f1578c0 = 0;

        /* JADX INFO: renamed from: d0 */
        public int f1580d0 = -1;

        /* JADX INFO: renamed from: h0 */
        public boolean f1588h0 = false;

        /* JADX INFO: renamed from: i0 */
        public boolean f1590i0 = false;

        /* JADX INFO: renamed from: j0 */
        public boolean f1592j0 = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1546k0 = sparseIntArray;
            sparseIntArray.append(C0217i.Layout_layout_constraintLeft_toLeftOf, 24);
            f1546k0.append(C0217i.Layout_layout_constraintLeft_toRightOf, 25);
            f1546k0.append(C0217i.Layout_layout_constraintRight_toLeftOf, 28);
            f1546k0.append(C0217i.Layout_layout_constraintRight_toRightOf, 29);
            f1546k0.append(C0217i.Layout_layout_constraintTop_toTopOf, 35);
            f1546k0.append(C0217i.Layout_layout_constraintTop_toBottomOf, 34);
            f1546k0.append(C0217i.Layout_layout_constraintBottom_toTopOf, 4);
            f1546k0.append(C0217i.Layout_layout_constraintBottom_toBottomOf, 3);
            f1546k0.append(C0217i.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f1546k0.append(C0217i.Layout_layout_editor_absoluteX, 6);
            f1546k0.append(C0217i.Layout_layout_editor_absoluteY, 7);
            f1546k0.append(C0217i.Layout_layout_constraintGuide_begin, 17);
            f1546k0.append(C0217i.Layout_layout_constraintGuide_end, 18);
            f1546k0.append(C0217i.Layout_layout_constraintGuide_percent, 19);
            f1546k0.append(C0217i.Layout_android_orientation, 26);
            f1546k0.append(C0217i.Layout_layout_constraintStart_toEndOf, 31);
            f1546k0.append(C0217i.Layout_layout_constraintStart_toStartOf, 32);
            f1546k0.append(C0217i.Layout_layout_constraintEnd_toStartOf, 10);
            f1546k0.append(C0217i.Layout_layout_constraintEnd_toEndOf, 9);
            f1546k0.append(C0217i.Layout_layout_goneMarginLeft, 13);
            f1546k0.append(C0217i.Layout_layout_goneMarginTop, 16);
            f1546k0.append(C0217i.Layout_layout_goneMarginRight, 14);
            f1546k0.append(C0217i.Layout_layout_goneMarginBottom, 11);
            f1546k0.append(C0217i.Layout_layout_goneMarginStart, 15);
            f1546k0.append(C0217i.Layout_layout_goneMarginEnd, 12);
            f1546k0.append(C0217i.Layout_layout_constraintVertical_weight, 38);
            f1546k0.append(C0217i.Layout_layout_constraintHorizontal_weight, 37);
            f1546k0.append(C0217i.Layout_layout_constraintHorizontal_chainStyle, 39);
            f1546k0.append(C0217i.Layout_layout_constraintVertical_chainStyle, 40);
            f1546k0.append(C0217i.Layout_layout_constraintHorizontal_bias, 20);
            f1546k0.append(C0217i.Layout_layout_constraintVertical_bias, 36);
            f1546k0.append(C0217i.Layout_layout_constraintDimensionRatio, 5);
            f1546k0.append(C0217i.Layout_layout_constraintLeft_creator, 76);
            f1546k0.append(C0217i.Layout_layout_constraintTop_creator, 76);
            f1546k0.append(C0217i.Layout_layout_constraintRight_creator, 76);
            f1546k0.append(C0217i.Layout_layout_constraintBottom_creator, 76);
            f1546k0.append(C0217i.Layout_layout_constraintBaseline_creator, 76);
            f1546k0.append(C0217i.Layout_android_layout_marginLeft, 23);
            f1546k0.append(C0217i.Layout_android_layout_marginRight, 27);
            f1546k0.append(C0217i.Layout_android_layout_marginStart, 30);
            f1546k0.append(C0217i.Layout_android_layout_marginEnd, 8);
            f1546k0.append(C0217i.Layout_android_layout_marginTop, 33);
            f1546k0.append(C0217i.Layout_android_layout_marginBottom, 2);
            f1546k0.append(C0217i.Layout_android_layout_width, 22);
            f1546k0.append(C0217i.Layout_android_layout_height, 21);
            f1546k0.append(C0217i.Layout_layout_constraintCircle, 61);
            f1546k0.append(C0217i.Layout_layout_constraintCircleRadius, 62);
            f1546k0.append(C0217i.Layout_layout_constraintCircleAngle, 63);
            f1546k0.append(C0217i.Layout_layout_constraintWidth_percent, 69);
            f1546k0.append(C0217i.Layout_layout_constraintHeight_percent, 70);
            f1546k0.append(C0217i.Layout_chainUseRtl, 71);
            f1546k0.append(C0217i.Layout_barrierDirection, 72);
            f1546k0.append(C0217i.Layout_barrierMargin, 73);
            f1546k0.append(C0217i.Layout_constraint_referenced_ids, 74);
            f1546k0.append(C0217i.Layout_barrierAllowsGoneWidgets, 75);
        }

        /* JADX INFO: renamed from: a */
        public void m1512a(b bVar) {
            this.f1573a = bVar.f1573a;
            this.f1577c = bVar.f1577c;
            this.f1575b = bVar.f1575b;
            this.f1579d = bVar.f1579d;
            this.f1581e = bVar.f1581e;
            this.f1583f = bVar.f1583f;
            this.f1585g = bVar.f1585g;
            this.f1587h = bVar.f1587h;
            this.f1589i = bVar.f1589i;
            this.f1591j = bVar.f1591j;
            this.f1593k = bVar.f1593k;
            this.f1594l = bVar.f1594l;
            this.f1595m = bVar.f1595m;
            this.f1596n = bVar.f1596n;
            this.f1597o = bVar.f1597o;
            this.f1598p = bVar.f1598p;
            this.f1599q = bVar.f1599q;
            this.f1600r = bVar.f1600r;
            this.f1601s = bVar.f1601s;
            this.f1602t = bVar.f1602t;
            this.f1603u = bVar.f1603u;
            this.f1604v = bVar.f1604v;
            this.f1605w = bVar.f1605w;
            this.f1606x = bVar.f1606x;
            this.f1607y = bVar.f1607y;
            this.f1608z = bVar.f1608z;
            this.f1547A = bVar.f1547A;
            this.f1548B = bVar.f1548B;
            this.f1549C = bVar.f1549C;
            this.f1550D = bVar.f1550D;
            this.f1551E = bVar.f1551E;
            this.f1552F = bVar.f1552F;
            this.f1553G = bVar.f1553G;
            this.f1554H = bVar.f1554H;
            this.f1555I = bVar.f1555I;
            this.f1556J = bVar.f1556J;
            this.f1557K = bVar.f1557K;
            this.f1558L = bVar.f1558L;
            this.f1559M = bVar.f1559M;
            this.f1560N = bVar.f1560N;
            this.f1561O = bVar.f1561O;
            this.f1562P = bVar.f1562P;
            this.f1563Q = bVar.f1563Q;
            this.f1564R = bVar.f1564R;
            this.f1565S = bVar.f1565S;
            this.f1566T = bVar.f1566T;
            this.f1567U = bVar.f1567U;
            this.f1568V = bVar.f1568V;
            this.f1569W = bVar.f1569W;
            this.f1570X = bVar.f1570X;
            this.f1571Y = bVar.f1571Y;
            this.f1572Z = bVar.f1572Z;
            this.f1574a0 = bVar.f1574a0;
            this.f1576b0 = bVar.f1576b0;
            this.f1578c0 = bVar.f1578c0;
            this.f1580d0 = bVar.f1580d0;
            this.f1586g0 = bVar.f1586g0;
            int[] iArr = bVar.f1582e0;
            if (iArr != null) {
                this.f1582e0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f1582e0 = null;
            }
            this.f1584f0 = bVar.f1584f0;
            this.f1588h0 = bVar.f1588h0;
            this.f1590i0 = bVar.f1590i0;
            this.f1592j0 = bVar.f1592j0;
        }

        /* JADX INFO: renamed from: b */
        void m1513b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0217i.Layout);
            this.f1575b = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                int i2 = f1546k0.get(index);
                if (i2 == 80) {
                    this.f1588h0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1588h0);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.f1598p = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1598p);
                            break;
                        case 2:
                            this.f1553G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1553G);
                            break;
                        case 3:
                            this.f1597o = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1597o);
                            break;
                        case 4:
                            this.f1596n = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1596n);
                            break;
                        case 5:
                            this.f1605w = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case 6:
                            this.f1547A = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1547A);
                            break;
                        case 7:
                            this.f1548B = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1548B);
                            break;
                        case 8:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f1554H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1554H);
                            }
                            break;
                        case 9:
                            this.f1602t = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1602t);
                            break;
                        case 10:
                            this.f1601s = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1601s);
                            break;
                        case 11:
                            this.f1559M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1559M);
                            break;
                        case 12:
                            this.f1560N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1560N);
                            break;
                        case 13:
                            this.f1556J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1556J);
                            break;
                        case 14:
                            this.f1558L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1558L);
                            break;
                        case 15:
                            this.f1561O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1561O);
                            break;
                        case 16:
                            this.f1557K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1557K);
                            break;
                        case 17:
                            this.f1581e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1581e);
                            break;
                        case 18:
                            this.f1583f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1583f);
                            break;
                        case 19:
                            this.f1585g = typedArrayObtainStyledAttributes.getFloat(index, this.f1585g);
                            break;
                        case 20:
                            this.f1603u = typedArrayObtainStyledAttributes.getFloat(index, this.f1603u);
                            break;
                        case 21:
                            this.f1579d = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f1579d);
                            break;
                        case 22:
                            this.f1577c = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f1577c);
                            break;
                        case 23:
                            this.f1550D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1550D);
                            break;
                        case 24:
                            this.f1587h = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1587h);
                            break;
                        case 25:
                            this.f1589i = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1589i);
                            break;
                        case 26:
                            this.f1549C = typedArrayObtainStyledAttributes.getInt(index, this.f1549C);
                            break;
                        case 27:
                            this.f1551E = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1551E);
                            break;
                        case 28:
                            this.f1591j = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1591j);
                            break;
                        case 29:
                            this.f1593k = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1593k);
                            break;
                        case 30:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f1555I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1555I);
                            }
                            break;
                        case 31:
                            this.f1599q = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1599q);
                            break;
                        case 32:
                            this.f1600r = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1600r);
                            break;
                        case 33:
                            this.f1552F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1552F);
                            break;
                        case 34:
                            this.f1595m = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1595m);
                            break;
                        case 35:
                            this.f1594l = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1594l);
                            break;
                        case 36:
                            this.f1604v = typedArrayObtainStyledAttributes.getFloat(index, this.f1604v);
                            break;
                        case 37:
                            this.f1563Q = typedArrayObtainStyledAttributes.getFloat(index, this.f1563Q);
                            break;
                        case 38:
                            this.f1562P = typedArrayObtainStyledAttributes.getFloat(index, this.f1562P);
                            break;
                        case 39:
                            this.f1564R = typedArrayObtainStyledAttributes.getInt(index, this.f1564R);
                            break;
                        case 40:
                            this.f1565S = typedArrayObtainStyledAttributes.getInt(index, this.f1565S);
                            break;
                        default:
                            switch (i2) {
                                case 54:
                                    this.f1566T = typedArrayObtainStyledAttributes.getInt(index, this.f1566T);
                                    break;
                                case 55:
                                    this.f1567U = typedArrayObtainStyledAttributes.getInt(index, this.f1567U);
                                    break;
                                case 56:
                                    this.f1568V = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1568V);
                                    break;
                                case 57:
                                    this.f1569W = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1569W);
                                    break;
                                case 58:
                                    this.f1570X = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1570X);
                                    break;
                                case 59:
                                    this.f1571Y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1571Y);
                                    break;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.f1606x = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1606x);
                                            break;
                                        case 62:
                                            this.f1607y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1607y);
                                            break;
                                        case 63:
                                            this.f1608z = typedArrayObtainStyledAttributes.getFloat(index, this.f1608z);
                                            break;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.f1572Z = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 70:
                                                    this.f1574a0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 71:
                                                    break;
                                                case 72:
                                                    this.f1576b0 = typedArrayObtainStyledAttributes.getInt(index, this.f1576b0);
                                                    break;
                                                case 73:
                                                    this.f1578c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1578c0);
                                                    break;
                                                case 74:
                                                    this.f1584f0 = typedArrayObtainStyledAttributes.getString(index);
                                                    break;
                                                case 75:
                                                    this.f1592j0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1592j0);
                                                    break;
                                                case 76:
                                                    String str = "unused attribute 0x" + Integer.toHexString(index) + "   " + f1546k0.get(index);
                                                    break;
                                                case 77:
                                                    this.f1586g0 = typedArrayObtainStyledAttributes.getString(index);
                                                    break;
                                                default:
                                                    String str2 = "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f1546k0.get(index);
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                } else {
                    this.f1590i0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1590i0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.d$c */
    public static class c {

        /* JADX INFO: renamed from: h */
        private static SparseIntArray f1609h;

        /* JADX INFO: renamed from: a */
        public boolean f1610a = false;

        /* JADX INFO: renamed from: b */
        public int f1611b = -1;

        /* JADX INFO: renamed from: c */
        public String f1612c = null;

        /* JADX INFO: renamed from: d */
        public int f1613d = -1;

        /* JADX INFO: renamed from: e */
        public int f1614e = 0;

        /* JADX INFO: renamed from: f */
        public float f1615f = Float.NaN;

        /* JADX INFO: renamed from: g */
        public float f1616g = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1609h = sparseIntArray;
            sparseIntArray.append(C0217i.Motion_motionPathRotate, 1);
            f1609h.append(C0217i.Motion_pathMotionArc, 2);
            f1609h.append(C0217i.Motion_transitionEasing, 3);
            f1609h.append(C0217i.Motion_drawPath, 4);
            f1609h.append(C0217i.Motion_animate_relativeTo, 5);
            f1609h.append(C0217i.Motion_motionStagger, 6);
        }

        /* JADX INFO: renamed from: a */
        public void m1514a(c cVar) {
            this.f1610a = cVar.f1610a;
            this.f1611b = cVar.f1611b;
            this.f1612c = cVar.f1612c;
            this.f1613d = cVar.f1613d;
            this.f1614e = cVar.f1614e;
            this.f1616g = cVar.f1616g;
            this.f1615f = cVar.f1615f;
        }

        /* JADX INFO: renamed from: b */
        void m1515b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0217i.Motion);
            this.f1610a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (f1609h.get(index)) {
                    case 1:
                        this.f1616g = typedArrayObtainStyledAttributes.getFloat(index, this.f1616g);
                        break;
                    case 2:
                        this.f1613d = typedArrayObtainStyledAttributes.getInt(index, this.f1613d);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.f1612c = typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            this.f1612c = C0542a.f3343a[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        this.f1614e = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f1611b = C0212d.m1493o(typedArrayObtainStyledAttributes, index, this.f1611b);
                        break;
                    case 6:
                        this.f1615f = typedArrayObtainStyledAttributes.getFloat(index, this.f1615f);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.d$d */
    public static class d {

        /* JADX INFO: renamed from: a */
        public boolean f1617a = false;

        /* JADX INFO: renamed from: b */
        public int f1618b = 0;

        /* JADX INFO: renamed from: c */
        public int f1619c = 0;

        /* JADX INFO: renamed from: d */
        public float f1620d = 1.0f;

        /* JADX INFO: renamed from: e */
        public float f1621e = Float.NaN;

        /* JADX INFO: renamed from: a */
        public void m1516a(d dVar) {
            this.f1617a = dVar.f1617a;
            this.f1618b = dVar.f1618b;
            this.f1620d = dVar.f1620d;
            this.f1621e = dVar.f1621e;
            this.f1619c = dVar.f1619c;
        }

        /* JADX INFO: renamed from: b */
        void m1517b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0217i.PropertySet);
            this.f1617a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == C0217i.PropertySet_android_alpha) {
                    this.f1620d = typedArrayObtainStyledAttributes.getFloat(index, this.f1620d);
                } else if (index == C0217i.PropertySet_android_visibility) {
                    this.f1618b = typedArrayObtainStyledAttributes.getInt(index, this.f1618b);
                    this.f1618b = C0212d.f1535d[this.f1618b];
                } else if (index == C0217i.PropertySet_visibilityMode) {
                    this.f1619c = typedArrayObtainStyledAttributes.getInt(index, this.f1619c);
                } else if (index == C0217i.PropertySet_motionProgress) {
                    this.f1621e = typedArrayObtainStyledAttributes.getFloat(index, this.f1621e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.d$e */
    public static class e {

        /* JADX INFO: renamed from: n */
        private static SparseIntArray f1622n;

        /* JADX INFO: renamed from: a */
        public boolean f1623a = false;

        /* JADX INFO: renamed from: b */
        public float f1624b = CropImageView.DEFAULT_ASPECT_RATIO;

        /* JADX INFO: renamed from: c */
        public float f1625c = CropImageView.DEFAULT_ASPECT_RATIO;

        /* JADX INFO: renamed from: d */
        public float f1626d = CropImageView.DEFAULT_ASPECT_RATIO;

        /* JADX INFO: renamed from: e */
        public float f1627e = 1.0f;

        /* JADX INFO: renamed from: f */
        public float f1628f = 1.0f;

        /* JADX INFO: renamed from: g */
        public float f1629g = Float.NaN;

        /* JADX INFO: renamed from: h */
        public float f1630h = Float.NaN;

        /* JADX INFO: renamed from: i */
        public float f1631i = CropImageView.DEFAULT_ASPECT_RATIO;

        /* JADX INFO: renamed from: j */
        public float f1632j = CropImageView.DEFAULT_ASPECT_RATIO;

        /* JADX INFO: renamed from: k */
        public float f1633k = CropImageView.DEFAULT_ASPECT_RATIO;

        /* JADX INFO: renamed from: l */
        public boolean f1634l = false;

        /* JADX INFO: renamed from: m */
        public float f1635m = CropImageView.DEFAULT_ASPECT_RATIO;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1622n = sparseIntArray;
            sparseIntArray.append(C0217i.Transform_android_rotation, 1);
            f1622n.append(C0217i.Transform_android_rotationX, 2);
            f1622n.append(C0217i.Transform_android_rotationY, 3);
            f1622n.append(C0217i.Transform_android_scaleX, 4);
            f1622n.append(C0217i.Transform_android_scaleY, 5);
            f1622n.append(C0217i.Transform_android_transformPivotX, 6);
            f1622n.append(C0217i.Transform_android_transformPivotY, 7);
            f1622n.append(C0217i.Transform_android_translationX, 8);
            f1622n.append(C0217i.Transform_android_translationY, 9);
            f1622n.append(C0217i.Transform_android_translationZ, 10);
            f1622n.append(C0217i.Transform_android_elevation, 11);
        }

        /* JADX INFO: renamed from: a */
        public void m1518a(e eVar) {
            this.f1623a = eVar.f1623a;
            this.f1624b = eVar.f1624b;
            this.f1625c = eVar.f1625c;
            this.f1626d = eVar.f1626d;
            this.f1627e = eVar.f1627e;
            this.f1628f = eVar.f1628f;
            this.f1629g = eVar.f1629g;
            this.f1630h = eVar.f1630h;
            this.f1631i = eVar.f1631i;
            this.f1632j = eVar.f1632j;
            this.f1633k = eVar.f1633k;
            this.f1634l = eVar.f1634l;
            this.f1635m = eVar.f1635m;
        }

        /* JADX INFO: renamed from: b */
        void m1519b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0217i.Transform);
            this.f1623a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (f1622n.get(index)) {
                    case 1:
                        this.f1624b = typedArrayObtainStyledAttributes.getFloat(index, this.f1624b);
                        break;
                    case 2:
                        this.f1625c = typedArrayObtainStyledAttributes.getFloat(index, this.f1625c);
                        break;
                    case 3:
                        this.f1626d = typedArrayObtainStyledAttributes.getFloat(index, this.f1626d);
                        break;
                    case 4:
                        this.f1627e = typedArrayObtainStyledAttributes.getFloat(index, this.f1627e);
                        break;
                    case 5:
                        this.f1628f = typedArrayObtainStyledAttributes.getFloat(index, this.f1628f);
                        break;
                    case 6:
                        this.f1629g = typedArrayObtainStyledAttributes.getDimension(index, this.f1629g);
                        break;
                    case 7:
                        this.f1630h = typedArrayObtainStyledAttributes.getDimension(index, this.f1630h);
                        break;
                    case 8:
                        this.f1631i = typedArrayObtainStyledAttributes.getDimension(index, this.f1631i);
                        break;
                    case 9:
                        this.f1632j = typedArrayObtainStyledAttributes.getDimension(index, this.f1632j);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f1633k = typedArrayObtainStyledAttributes.getDimension(index, this.f1633k);
                        }
                        break;
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f1634l = true;
                            this.f1635m = typedArrayObtainStyledAttributes.getDimension(index, this.f1635m);
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f1536e = sparseIntArray;
        sparseIntArray.append(C0217i.Constraint_layout_constraintLeft_toLeftOf, 25);
        f1536e.append(C0217i.Constraint_layout_constraintLeft_toRightOf, 26);
        f1536e.append(C0217i.Constraint_layout_constraintRight_toLeftOf, 29);
        f1536e.append(C0217i.Constraint_layout_constraintRight_toRightOf, 30);
        f1536e.append(C0217i.Constraint_layout_constraintTop_toTopOf, 36);
        f1536e.append(C0217i.Constraint_layout_constraintTop_toBottomOf, 35);
        f1536e.append(C0217i.Constraint_layout_constraintBottom_toTopOf, 4);
        f1536e.append(C0217i.Constraint_layout_constraintBottom_toBottomOf, 3);
        f1536e.append(C0217i.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f1536e.append(C0217i.Constraint_layout_editor_absoluteX, 6);
        f1536e.append(C0217i.Constraint_layout_editor_absoluteY, 7);
        f1536e.append(C0217i.Constraint_layout_constraintGuide_begin, 17);
        f1536e.append(C0217i.Constraint_layout_constraintGuide_end, 18);
        f1536e.append(C0217i.Constraint_layout_constraintGuide_percent, 19);
        f1536e.append(C0217i.Constraint_android_orientation, 27);
        f1536e.append(C0217i.Constraint_layout_constraintStart_toEndOf, 32);
        f1536e.append(C0217i.Constraint_layout_constraintStart_toStartOf, 33);
        f1536e.append(C0217i.Constraint_layout_constraintEnd_toStartOf, 10);
        f1536e.append(C0217i.Constraint_layout_constraintEnd_toEndOf, 9);
        f1536e.append(C0217i.Constraint_layout_goneMarginLeft, 13);
        f1536e.append(C0217i.Constraint_layout_goneMarginTop, 16);
        f1536e.append(C0217i.Constraint_layout_goneMarginRight, 14);
        f1536e.append(C0217i.Constraint_layout_goneMarginBottom, 11);
        f1536e.append(C0217i.Constraint_layout_goneMarginStart, 15);
        f1536e.append(C0217i.Constraint_layout_goneMarginEnd, 12);
        f1536e.append(C0217i.Constraint_layout_constraintVertical_weight, 40);
        f1536e.append(C0217i.Constraint_layout_constraintHorizontal_weight, 39);
        f1536e.append(C0217i.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f1536e.append(C0217i.Constraint_layout_constraintVertical_chainStyle, 42);
        f1536e.append(C0217i.Constraint_layout_constraintHorizontal_bias, 20);
        f1536e.append(C0217i.Constraint_layout_constraintVertical_bias, 37);
        f1536e.append(C0217i.Constraint_layout_constraintDimensionRatio, 5);
        f1536e.append(C0217i.Constraint_layout_constraintLeft_creator, 82);
        f1536e.append(C0217i.Constraint_layout_constraintTop_creator, 82);
        f1536e.append(C0217i.Constraint_layout_constraintRight_creator, 82);
        f1536e.append(C0217i.Constraint_layout_constraintBottom_creator, 82);
        f1536e.append(C0217i.Constraint_layout_constraintBaseline_creator, 82);
        f1536e.append(C0217i.Constraint_android_layout_marginLeft, 24);
        f1536e.append(C0217i.Constraint_android_layout_marginRight, 28);
        f1536e.append(C0217i.Constraint_android_layout_marginStart, 31);
        f1536e.append(C0217i.Constraint_android_layout_marginEnd, 8);
        f1536e.append(C0217i.Constraint_android_layout_marginTop, 34);
        f1536e.append(C0217i.Constraint_android_layout_marginBottom, 2);
        f1536e.append(C0217i.Constraint_android_layout_width, 23);
        f1536e.append(C0217i.Constraint_android_layout_height, 21);
        f1536e.append(C0217i.Constraint_android_visibility, 22);
        f1536e.append(C0217i.Constraint_android_alpha, 43);
        f1536e.append(C0217i.Constraint_android_elevation, 44);
        f1536e.append(C0217i.Constraint_android_rotationX, 45);
        f1536e.append(C0217i.Constraint_android_rotationY, 46);
        f1536e.append(C0217i.Constraint_android_rotation, 60);
        f1536e.append(C0217i.Constraint_android_scaleX, 47);
        f1536e.append(C0217i.Constraint_android_scaleY, 48);
        f1536e.append(C0217i.Constraint_android_transformPivotX, 49);
        f1536e.append(C0217i.Constraint_android_transformPivotY, 50);
        f1536e.append(C0217i.Constraint_android_translationX, 51);
        f1536e.append(C0217i.Constraint_android_translationY, 52);
        f1536e.append(C0217i.Constraint_android_translationZ, 53);
        f1536e.append(C0217i.Constraint_layout_constraintWidth_default, 54);
        f1536e.append(C0217i.Constraint_layout_constraintHeight_default, 55);
        f1536e.append(C0217i.Constraint_layout_constraintWidth_max, 56);
        f1536e.append(C0217i.Constraint_layout_constraintHeight_max, 57);
        f1536e.append(C0217i.Constraint_layout_constraintWidth_min, 58);
        f1536e.append(C0217i.Constraint_layout_constraintHeight_min, 59);
        f1536e.append(C0217i.Constraint_layout_constraintCircle, 61);
        f1536e.append(C0217i.Constraint_layout_constraintCircleRadius, 62);
        f1536e.append(C0217i.Constraint_layout_constraintCircleAngle, 63);
        f1536e.append(C0217i.Constraint_animate_relativeTo, 64);
        f1536e.append(C0217i.Constraint_transitionEasing, 65);
        f1536e.append(C0217i.Constraint_drawPath, 66);
        f1536e.append(C0217i.Constraint_transitionPathRotate, 67);
        f1536e.append(C0217i.Constraint_motionStagger, 79);
        f1536e.append(C0217i.Constraint_android_id, 38);
        f1536e.append(C0217i.Constraint_motionProgress, 68);
        f1536e.append(C0217i.Constraint_layout_constraintWidth_percent, 69);
        f1536e.append(C0217i.Constraint_layout_constraintHeight_percent, 70);
        f1536e.append(C0217i.Constraint_chainUseRtl, 71);
        f1536e.append(C0217i.Constraint_barrierDirection, 72);
        f1536e.append(C0217i.Constraint_barrierMargin, 73);
        f1536e.append(C0217i.Constraint_constraint_referenced_ids, 74);
        f1536e.append(C0217i.Constraint_barrierAllowsGoneWidgets, 75);
        f1536e.append(C0217i.Constraint_pathMotionArc, 76);
        f1536e.append(C0217i.Constraint_layout_constraintTag, 77);
        f1536e.append(C0217i.Constraint_visibilityMode, 78);
        f1536e.append(C0217i.Constraint_layout_constrainedWidth, 80);
        f1536e.append(C0217i.Constraint_layout_constrainedHeight, 81);
    }

    /* JADX INFO: renamed from: j */
    private int[] m1490j(View view, String str) {
        int iIntValue;
        Object objM1454g;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i = 0;
        int i2 = 0;
        while (i < strArrSplit.length) {
            String strTrim = strArrSplit[i].trim();
            try {
                iIntValue = C0216h.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (objM1454g = ((ConstraintLayout) view.getParent()).m1454g(0, strTrim)) != null && (objM1454g instanceof Integer)) {
                iIntValue = ((Integer) objM1454g).intValue();
            }
            iArr[i2] = iIntValue;
            i++;
            i2++;
        }
        return i2 != strArrSplit.length ? Arrays.copyOf(iArr, i2) : iArr;
    }

    /* JADX INFO: renamed from: k */
    private a m1491k(Context context, AttributeSet attributeSet) {
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0217i.Constraint);
        m1494p(context, aVar, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    /* JADX INFO: renamed from: l */
    private a m1492l(int i) {
        if (!this.f1539c.containsKey(Integer.valueOf(i))) {
            this.f1539c.put(Integer.valueOf(i), new a());
        }
        return this.f1539c.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o */
    public static int m1493o(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    /* JADX INFO: renamed from: p */
    private void m1494p(Context context, a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index != C0217i.Constraint_android_id && C0217i.Constraint_android_layout_marginStart != index && C0217i.Constraint_android_layout_marginEnd != index) {
                aVar.f1542c.f1610a = true;
                aVar.f1543d.f1575b = true;
                aVar.f1541b.f1617a = true;
                aVar.f1544e.f1623a = true;
            }
            switch (f1536e.get(index)) {
                case 1:
                    b bVar = aVar.f1543d;
                    bVar.f1598p = m1493o(typedArray, index, bVar.f1598p);
                    break;
                case 2:
                    b bVar2 = aVar.f1543d;
                    bVar2.f1553G = typedArray.getDimensionPixelSize(index, bVar2.f1553G);
                    break;
                case 3:
                    b bVar3 = aVar.f1543d;
                    bVar3.f1597o = m1493o(typedArray, index, bVar3.f1597o);
                    break;
                case 4:
                    b bVar4 = aVar.f1543d;
                    bVar4.f1596n = m1493o(typedArray, index, bVar4.f1596n);
                    break;
                case 5:
                    aVar.f1543d.f1605w = typedArray.getString(index);
                    break;
                case 6:
                    b bVar5 = aVar.f1543d;
                    bVar5.f1547A = typedArray.getDimensionPixelOffset(index, bVar5.f1547A);
                    break;
                case 7:
                    b bVar6 = aVar.f1543d;
                    bVar6.f1548B = typedArray.getDimensionPixelOffset(index, bVar6.f1548B);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        b bVar7 = aVar.f1543d;
                        bVar7.f1554H = typedArray.getDimensionPixelSize(index, bVar7.f1554H);
                    }
                    break;
                case 9:
                    b bVar8 = aVar.f1543d;
                    bVar8.f1602t = m1493o(typedArray, index, bVar8.f1602t);
                    break;
                case 10:
                    b bVar9 = aVar.f1543d;
                    bVar9.f1601s = m1493o(typedArray, index, bVar9.f1601s);
                    break;
                case 11:
                    b bVar10 = aVar.f1543d;
                    bVar10.f1559M = typedArray.getDimensionPixelSize(index, bVar10.f1559M);
                    break;
                case 12:
                    b bVar11 = aVar.f1543d;
                    bVar11.f1560N = typedArray.getDimensionPixelSize(index, bVar11.f1560N);
                    break;
                case 13:
                    b bVar12 = aVar.f1543d;
                    bVar12.f1556J = typedArray.getDimensionPixelSize(index, bVar12.f1556J);
                    break;
                case 14:
                    b bVar13 = aVar.f1543d;
                    bVar13.f1558L = typedArray.getDimensionPixelSize(index, bVar13.f1558L);
                    break;
                case 15:
                    b bVar14 = aVar.f1543d;
                    bVar14.f1561O = typedArray.getDimensionPixelSize(index, bVar14.f1561O);
                    break;
                case 16:
                    b bVar15 = aVar.f1543d;
                    bVar15.f1557K = typedArray.getDimensionPixelSize(index, bVar15.f1557K);
                    break;
                case 17:
                    b bVar16 = aVar.f1543d;
                    bVar16.f1581e = typedArray.getDimensionPixelOffset(index, bVar16.f1581e);
                    break;
                case 18:
                    b bVar17 = aVar.f1543d;
                    bVar17.f1583f = typedArray.getDimensionPixelOffset(index, bVar17.f1583f);
                    break;
                case 19:
                    b bVar18 = aVar.f1543d;
                    bVar18.f1585g = typedArray.getFloat(index, bVar18.f1585g);
                    break;
                case 20:
                    b bVar19 = aVar.f1543d;
                    bVar19.f1603u = typedArray.getFloat(index, bVar19.f1603u);
                    break;
                case 21:
                    b bVar20 = aVar.f1543d;
                    bVar20.f1579d = typedArray.getLayoutDimension(index, bVar20.f1579d);
                    break;
                case 22:
                    d dVar = aVar.f1541b;
                    dVar.f1618b = typedArray.getInt(index, dVar.f1618b);
                    d dVar2 = aVar.f1541b;
                    dVar2.f1618b = f1535d[dVar2.f1618b];
                    break;
                case 23:
                    b bVar21 = aVar.f1543d;
                    bVar21.f1577c = typedArray.getLayoutDimension(index, bVar21.f1577c);
                    break;
                case 24:
                    b bVar22 = aVar.f1543d;
                    bVar22.f1550D = typedArray.getDimensionPixelSize(index, bVar22.f1550D);
                    break;
                case 25:
                    b bVar23 = aVar.f1543d;
                    bVar23.f1587h = m1493o(typedArray, index, bVar23.f1587h);
                    break;
                case 26:
                    b bVar24 = aVar.f1543d;
                    bVar24.f1589i = m1493o(typedArray, index, bVar24.f1589i);
                    break;
                case 27:
                    b bVar25 = aVar.f1543d;
                    bVar25.f1549C = typedArray.getInt(index, bVar25.f1549C);
                    break;
                case 28:
                    b bVar26 = aVar.f1543d;
                    bVar26.f1551E = typedArray.getDimensionPixelSize(index, bVar26.f1551E);
                    break;
                case 29:
                    b bVar27 = aVar.f1543d;
                    bVar27.f1591j = m1493o(typedArray, index, bVar27.f1591j);
                    break;
                case 30:
                    b bVar28 = aVar.f1543d;
                    bVar28.f1593k = m1493o(typedArray, index, bVar28.f1593k);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        b bVar29 = aVar.f1543d;
                        bVar29.f1555I = typedArray.getDimensionPixelSize(index, bVar29.f1555I);
                    }
                    break;
                case 32:
                    b bVar30 = aVar.f1543d;
                    bVar30.f1599q = m1493o(typedArray, index, bVar30.f1599q);
                    break;
                case 33:
                    b bVar31 = aVar.f1543d;
                    bVar31.f1600r = m1493o(typedArray, index, bVar31.f1600r);
                    break;
                case 34:
                    b bVar32 = aVar.f1543d;
                    bVar32.f1552F = typedArray.getDimensionPixelSize(index, bVar32.f1552F);
                    break;
                case 35:
                    b bVar33 = aVar.f1543d;
                    bVar33.f1595m = m1493o(typedArray, index, bVar33.f1595m);
                    break;
                case 36:
                    b bVar34 = aVar.f1543d;
                    bVar34.f1594l = m1493o(typedArray, index, bVar34.f1594l);
                    break;
                case 37:
                    b bVar35 = aVar.f1543d;
                    bVar35.f1604v = typedArray.getFloat(index, bVar35.f1604v);
                    break;
                case 38:
                    aVar.f1540a = typedArray.getResourceId(index, aVar.f1540a);
                    break;
                case 39:
                    b bVar36 = aVar.f1543d;
                    bVar36.f1563Q = typedArray.getFloat(index, bVar36.f1563Q);
                    break;
                case 40:
                    b bVar37 = aVar.f1543d;
                    bVar37.f1562P = typedArray.getFloat(index, bVar37.f1562P);
                    break;
                case 41:
                    b bVar38 = aVar.f1543d;
                    bVar38.f1564R = typedArray.getInt(index, bVar38.f1564R);
                    break;
                case 42:
                    b bVar39 = aVar.f1543d;
                    bVar39.f1565S = typedArray.getInt(index, bVar39.f1565S);
                    break;
                case 43:
                    d dVar3 = aVar.f1541b;
                    dVar3.f1620d = typedArray.getFloat(index, dVar3.f1620d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        e eVar = aVar.f1544e;
                        eVar.f1634l = true;
                        eVar.f1635m = typedArray.getDimension(index, eVar.f1635m);
                    }
                    break;
                case 45:
                    e eVar2 = aVar.f1544e;
                    eVar2.f1625c = typedArray.getFloat(index, eVar2.f1625c);
                    break;
                case 46:
                    e eVar3 = aVar.f1544e;
                    eVar3.f1626d = typedArray.getFloat(index, eVar3.f1626d);
                    break;
                case 47:
                    e eVar4 = aVar.f1544e;
                    eVar4.f1627e = typedArray.getFloat(index, eVar4.f1627e);
                    break;
                case 48:
                    e eVar5 = aVar.f1544e;
                    eVar5.f1628f = typedArray.getFloat(index, eVar5.f1628f);
                    break;
                case 49:
                    e eVar6 = aVar.f1544e;
                    eVar6.f1629g = typedArray.getDimension(index, eVar6.f1629g);
                    break;
                case 50:
                    e eVar7 = aVar.f1544e;
                    eVar7.f1630h = typedArray.getDimension(index, eVar7.f1630h);
                    break;
                case 51:
                    e eVar8 = aVar.f1544e;
                    eVar8.f1631i = typedArray.getDimension(index, eVar8.f1631i);
                    break;
                case 52:
                    e eVar9 = aVar.f1544e;
                    eVar9.f1632j = typedArray.getDimension(index, eVar9.f1632j);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        e eVar10 = aVar.f1544e;
                        eVar10.f1633k = typedArray.getDimension(index, eVar10.f1633k);
                    }
                    break;
                case 54:
                    b bVar40 = aVar.f1543d;
                    bVar40.f1566T = typedArray.getInt(index, bVar40.f1566T);
                    break;
                case 55:
                    b bVar41 = aVar.f1543d;
                    bVar41.f1567U = typedArray.getInt(index, bVar41.f1567U);
                    break;
                case 56:
                    b bVar42 = aVar.f1543d;
                    bVar42.f1568V = typedArray.getDimensionPixelSize(index, bVar42.f1568V);
                    break;
                case 57:
                    b bVar43 = aVar.f1543d;
                    bVar43.f1569W = typedArray.getDimensionPixelSize(index, bVar43.f1569W);
                    break;
                case 58:
                    b bVar44 = aVar.f1543d;
                    bVar44.f1570X = typedArray.getDimensionPixelSize(index, bVar44.f1570X);
                    break;
                case 59:
                    b bVar45 = aVar.f1543d;
                    bVar45.f1571Y = typedArray.getDimensionPixelSize(index, bVar45.f1571Y);
                    break;
                case 60:
                    e eVar11 = aVar.f1544e;
                    eVar11.f1624b = typedArray.getFloat(index, eVar11.f1624b);
                    break;
                case 61:
                    b bVar46 = aVar.f1543d;
                    bVar46.f1606x = m1493o(typedArray, index, bVar46.f1606x);
                    break;
                case 62:
                    b bVar47 = aVar.f1543d;
                    bVar47.f1607y = typedArray.getDimensionPixelSize(index, bVar47.f1607y);
                    break;
                case 63:
                    b bVar48 = aVar.f1543d;
                    bVar48.f1608z = typedArray.getFloat(index, bVar48.f1608z);
                    break;
                case 64:
                    c cVar = aVar.f1542c;
                    cVar.f1611b = m1493o(typedArray, index, cVar.f1611b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.f1542c.f1612c = typedArray.getString(index);
                    } else {
                        aVar.f1542c.f1612c = C0542a.f3343a[typedArray.getInteger(index, 0)];
                    }
                    break;
                case 66:
                    aVar.f1542c.f1614e = typedArray.getInt(index, 0);
                    break;
                case 67:
                    c cVar2 = aVar.f1542c;
                    cVar2.f1616g = typedArray.getFloat(index, cVar2.f1616g);
                    break;
                case 68:
                    d dVar4 = aVar.f1541b;
                    dVar4.f1621e = typedArray.getFloat(index, dVar4.f1621e);
                    break;
                case 69:
                    aVar.f1543d.f1572Z = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.f1543d.f1574a0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    break;
                case 72:
                    b bVar49 = aVar.f1543d;
                    bVar49.f1576b0 = typedArray.getInt(index, bVar49.f1576b0);
                    break;
                case 73:
                    b bVar50 = aVar.f1543d;
                    bVar50.f1578c0 = typedArray.getDimensionPixelSize(index, bVar50.f1578c0);
                    break;
                case 74:
                    aVar.f1543d.f1584f0 = typedArray.getString(index);
                    break;
                case 75:
                    b bVar51 = aVar.f1543d;
                    bVar51.f1592j0 = typedArray.getBoolean(index, bVar51.f1592j0);
                    break;
                case 76:
                    c cVar3 = aVar.f1542c;
                    cVar3.f1613d = typedArray.getInt(index, cVar3.f1613d);
                    break;
                case 77:
                    aVar.f1543d.f1586g0 = typedArray.getString(index);
                    break;
                case 78:
                    d dVar5 = aVar.f1541b;
                    dVar5.f1619c = typedArray.getInt(index, dVar5.f1619c);
                    break;
                case 79:
                    c cVar4 = aVar.f1542c;
                    cVar4.f1615f = typedArray.getFloat(index, cVar4.f1615f);
                    break;
                case 80:
                    b bVar52 = aVar.f1543d;
                    bVar52.f1588h0 = typedArray.getBoolean(index, bVar52.f1588h0);
                    break;
                case 81:
                    b bVar53 = aVar.f1543d;
                    bVar53.f1590i0 = typedArray.getBoolean(index, bVar53.f1590i0);
                    break;
                case 82:
                    String str = "unused attribute 0x" + Integer.toHexString(index) + "   " + f1536e.get(index);
                    break;
                default:
                    String str2 = "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f1536e.get(index);
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public void m1495c(ConstraintLayout constraintLayout) {
        m1496d(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    /* JADX INFO: renamed from: d */
    void m1496d(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.f1539c.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f1539c.containsKey(Integer.valueOf(id))) {
                String str = "id unknown " + C0543a.m4309a(childAt);
            } else {
                if (this.f1538b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (this.f1539c.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        a aVar = this.f1539c.get(Integer.valueOf(id));
                        if (childAt instanceof Barrier) {
                            aVar.f1543d.f1580d0 = 1;
                        }
                        int i2 = aVar.f1543d.f1580d0;
                        if (i2 != -1 && i2 == 1) {
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(aVar.f1543d.f1576b0);
                            barrier.setMargin(aVar.f1543d.f1578c0);
                            barrier.setAllowsGoneWidget(aVar.f1543d.f1592j0);
                            b bVar = aVar.f1543d;
                            int[] iArr = bVar.f1582e0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str2 = bVar.f1584f0;
                                if (str2 != null) {
                                    bVar.f1582e0 = m1490j(barrier, str2);
                                    barrier.setReferencedIds(aVar.f1543d.f1582e0);
                                }
                            }
                        }
                        ConstraintLayout.C0207b c0207b = (ConstraintLayout.C0207b) childAt.getLayoutParams();
                        c0207b.m1463a();
                        aVar.m1510d(c0207b);
                        if (z) {
                            C0209a.m1470c(childAt, aVar.f1545f);
                        }
                        childAt.setLayoutParams(c0207b);
                        d dVar = aVar.f1541b;
                        if (dVar.f1619c == 0) {
                            childAt.setVisibility(dVar.f1618b);
                        }
                        if (Build.VERSION.SDK_INT >= 17) {
                            childAt.setAlpha(aVar.f1541b.f1620d);
                            childAt.setRotation(aVar.f1544e.f1624b);
                            childAt.setRotationX(aVar.f1544e.f1625c);
                            childAt.setRotationY(aVar.f1544e.f1626d);
                            childAt.setScaleX(aVar.f1544e.f1627e);
                            childAt.setScaleY(aVar.f1544e.f1628f);
                            if (!Float.isNaN(aVar.f1544e.f1629g)) {
                                childAt.setPivotX(aVar.f1544e.f1629g);
                            }
                            if (!Float.isNaN(aVar.f1544e.f1630h)) {
                                childAt.setPivotY(aVar.f1544e.f1630h);
                            }
                            childAt.setTranslationX(aVar.f1544e.f1631i);
                            childAt.setTranslationY(aVar.f1544e.f1632j);
                            if (Build.VERSION.SDK_INT >= 21) {
                                childAt.setTranslationZ(aVar.f1544e.f1633k);
                                e eVar = aVar.f1544e;
                                if (eVar.f1634l) {
                                    childAt.setElevation(eVar.f1635m);
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
            a aVar2 = this.f1539c.get(num);
            int i3 = aVar2.f1543d.f1580d0;
            if (i3 != -1 && i3 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                b bVar2 = aVar2.f1543d;
                int[] iArr2 = bVar2.f1582e0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str4 = bVar2.f1584f0;
                    if (str4 != null) {
                        bVar2.f1582e0 = m1490j(barrier2, str4);
                        barrier2.setReferencedIds(aVar2.f1543d.f1582e0);
                    }
                }
                barrier2.setType(aVar2.f1543d.f1576b0);
                barrier2.setMargin(aVar2.f1543d.f1578c0);
                ConstraintLayout.C0207b c0207bGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.m1483n();
                aVar2.m1510d(c0207bGenerateDefaultLayoutParams);
                constraintLayout.addView(barrier2, c0207bGenerateDefaultLayoutParams);
            }
            if (aVar2.f1543d.f1573a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.C0207b c0207bGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                aVar2.m1510d(c0207bGenerateDefaultLayoutParams2);
                constraintLayout.addView(guideline, c0207bGenerateDefaultLayoutParams2);
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public void m1497e(int i, int i2) {
        if (this.f1539c.containsKey(Integer.valueOf(i))) {
            a aVar = this.f1539c.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    b bVar = aVar.f1543d;
                    bVar.f1589i = -1;
                    bVar.f1587h = -1;
                    bVar.f1550D = -1;
                    bVar.f1556J = -1;
                    return;
                case 2:
                    b bVar2 = aVar.f1543d;
                    bVar2.f1593k = -1;
                    bVar2.f1591j = -1;
                    bVar2.f1551E = -1;
                    bVar2.f1558L = -1;
                    return;
                case 3:
                    b bVar3 = aVar.f1543d;
                    bVar3.f1595m = -1;
                    bVar3.f1594l = -1;
                    bVar3.f1552F = -1;
                    bVar3.f1557K = -1;
                    return;
                case 4:
                    b bVar4 = aVar.f1543d;
                    bVar4.f1596n = -1;
                    bVar4.f1597o = -1;
                    bVar4.f1553G = -1;
                    bVar4.f1559M = -1;
                    return;
                case 5:
                    aVar.f1543d.f1598p = -1;
                    return;
                case 6:
                    b bVar5 = aVar.f1543d;
                    bVar5.f1599q = -1;
                    bVar5.f1600r = -1;
                    bVar5.f1555I = -1;
                    bVar5.f1561O = -1;
                    return;
                case 7:
                    b bVar6 = aVar.f1543d;
                    bVar6.f1601s = -1;
                    bVar6.f1602t = -1;
                    bVar6.f1554H = -1;
                    bVar6.f1560N = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public void m1498f(Context context, int i) {
        m1499g((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    /* JADX INFO: renamed from: g */
    public void m1499g(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f1539c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.C0207b c0207b = (ConstraintLayout.C0207b) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1538b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1539c.containsKey(Integer.valueOf(id))) {
                this.f1539c.put(Integer.valueOf(id), new a());
            }
            a aVar = this.f1539c.get(Integer.valueOf(id));
            aVar.f1545f = C0209a.m1468a(this.f1537a, childAt);
            aVar.m1507f(id, c0207b);
            aVar.f1541b.f1618b = childAt.getVisibility();
            if (Build.VERSION.SDK_INT >= 17) {
                aVar.f1541b.f1620d = childAt.getAlpha();
                aVar.f1544e.f1624b = childAt.getRotation();
                aVar.f1544e.f1625c = childAt.getRotationX();
                aVar.f1544e.f1626d = childAt.getRotationY();
                aVar.f1544e.f1627e = childAt.getScaleX();
                aVar.f1544e.f1628f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    e eVar = aVar.f1544e;
                    eVar.f1629g = pivotX;
                    eVar.f1630h = pivotY;
                }
                aVar.f1544e.f1631i = childAt.getTranslationX();
                aVar.f1544e.f1632j = childAt.getTranslationY();
                if (Build.VERSION.SDK_INT >= 21) {
                    aVar.f1544e.f1633k = childAt.getTranslationZ();
                    e eVar2 = aVar.f1544e;
                    if (eVar2.f1634l) {
                        eVar2.f1635m = childAt.getElevation();
                    }
                }
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                aVar.f1543d.f1592j0 = barrier.m1443o();
                aVar.f1543d.f1582e0 = barrier.getReferencedIds();
                aVar.f1543d.f1576b0 = barrier.getType();
                aVar.f1543d.f1578c0 = barrier.getMargin();
            }
        }
    }

    /* JADX INFO: renamed from: h */
    public void m1500h(C0213e c0213e) {
        int childCount = c0213e.getChildCount();
        this.f1539c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = c0213e.getChildAt(i);
            C0213e.a aVar = (C0213e.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1538b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1539c.containsKey(Integer.valueOf(id))) {
                this.f1539c.put(Integer.valueOf(id), new a());
            }
            a aVar2 = this.f1539c.get(Integer.valueOf(id));
            if (childAt instanceof AbstractC0210b) {
                aVar2.m1509h((AbstractC0210b) childAt, id, aVar);
            }
            aVar2.m1508g(id, aVar);
        }
    }

    /* JADX INFO: renamed from: i */
    public void m1501i(int i, int i2, int i3, float f) {
        b bVar = m1492l(i).f1543d;
        bVar.f1606x = i2;
        bVar.f1607y = i3;
        bVar.f1608z = f;
    }

    /* JADX INFO: renamed from: m */
    public void m1502m(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a aVarM1491k = m1491k(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        aVarM1491k.f1543d.f1573a = true;
                    }
                    this.f1539c.put(Integer.valueOf(aVarM1491k.f1540a), aVarM1491k);
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
    /* JADX INFO: renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m1503n(Context context, XmlPullParser xmlPullParser) {
        a aVarM1491k;
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
                                aVarM1491k = m1491k(context, Xml.asAttributeSet(xmlPullParser));
                                break;
                            case 1:
                                aVarM1491k = m1491k(context, Xml.asAttributeSet(xmlPullParser));
                                aVarM1491k.f1543d.f1573a = true;
                                aVarM1491k.f1543d.f1575b = true;
                                break;
                            case 2:
                                aVarM1491k = m1491k(context, Xml.asAttributeSet(xmlPullParser));
                                aVarM1491k.f1543d.f1580d0 = 1;
                                break;
                            case 3:
                                if (aVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                aVar.f1541b.m1517b(context, Xml.asAttributeSet(xmlPullParser));
                                continue;
                                break;
                            case 4:
                                if (aVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                aVar.f1544e.m1519b(context, Xml.asAttributeSet(xmlPullParser));
                                continue;
                                break;
                            case 5:
                                if (aVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                aVar.f1543d.m1513b(context, Xml.asAttributeSet(xmlPullParser));
                                continue;
                                break;
                            case 6:
                                if (aVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                aVar.f1542c.m1515b(context, Xml.asAttributeSet(xmlPullParser));
                                continue;
                                break;
                            case 7:
                                if (aVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                C0209a.m1469b(context, xmlPullParser, aVar.f1545f);
                                continue;
                                break;
                        }
                        aVar = aVarM1491k;
                    } else if (eventType != 3) {
                        continue;
                    } else {
                        String name2 = xmlPullParser.getName();
                        if ("ConstraintSet".equals(name2)) {
                            return;
                        }
                        if (name2.equalsIgnoreCase("Constraint")) {
                            this.f1539c.put(Integer.valueOf(aVar.f1540a), aVar);
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
