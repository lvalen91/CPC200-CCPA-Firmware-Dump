package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.BuildConfig;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p016c.p017a.C0493a;
import p016c.p017a.C0496d;
import p016c.p017a.C0498f;
import p016c.p017a.C0499g;
import p016c.p017a.C0500h;
import p016c.p017a.C0502j;
import p016c.p017a.p024o.InterfaceC0513c;
import p016c.p050h.p051a.AbstractC0627a;
import p016c.p052i.p053a.AbstractC0630a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class SearchView extends C0167g0 implements InterfaceC0513c {

    /* JADX INFO: renamed from: r0 */
    static final C0140n f847r0;

    /* JADX INFO: renamed from: A */
    private Rect f848A;

    /* JADX INFO: renamed from: B */
    private Rect f849B;

    /* JADX INFO: renamed from: C */
    private int[] f850C;

    /* JADX INFO: renamed from: D */
    private int[] f851D;

    /* JADX INFO: renamed from: E */
    private final ImageView f852E;

    /* JADX INFO: renamed from: F */
    private final Drawable f853F;

    /* JADX INFO: renamed from: G */
    private final int f854G;

    /* JADX INFO: renamed from: H */
    private final int f855H;

    /* JADX INFO: renamed from: I */
    private final Intent f856I;

    /* JADX INFO: renamed from: J */
    private final Intent f857J;

    /* JADX INFO: renamed from: K */
    private final CharSequence f858K;

    /* JADX INFO: renamed from: L */
    private InterfaceC0138l f859L;

    /* JADX INFO: renamed from: M */
    private InterfaceC0137k f860M;

    /* JADX INFO: renamed from: N */
    View.OnFocusChangeListener f861N;

    /* JADX INFO: renamed from: O */
    private InterfaceC0139m f862O;

    /* JADX INFO: renamed from: P */
    private View.OnClickListener f863P;

    /* JADX INFO: renamed from: Q */
    private boolean f864Q;

    /* JADX INFO: renamed from: R */
    private boolean f865R;

    /* JADX INFO: renamed from: S */
    AbstractC0627a f866S;

    /* JADX INFO: renamed from: T */
    private boolean f867T;

    /* JADX INFO: renamed from: U */
    private CharSequence f868U;

    /* JADX INFO: renamed from: V */
    private boolean f869V;

    /* JADX INFO: renamed from: W */
    private boolean f870W;

    /* JADX INFO: renamed from: a0 */
    private int f871a0;

    /* JADX INFO: renamed from: b0 */
    private boolean f872b0;

    /* JADX INFO: renamed from: c0 */
    private CharSequence f873c0;

    /* JADX INFO: renamed from: d0 */
    private CharSequence f874d0;

    /* JADX INFO: renamed from: e0 */
    private boolean f875e0;

    /* JADX INFO: renamed from: f0 */
    private int f876f0;

    /* JADX INFO: renamed from: g0 */
    SearchableInfo f877g0;

    /* JADX INFO: renamed from: h0 */
    private Bundle f878h0;

    /* JADX INFO: renamed from: i0 */
    private final Runnable f879i0;

    /* JADX INFO: renamed from: j0 */
    private Runnable f880j0;

    /* JADX INFO: renamed from: k0 */
    private final WeakHashMap<String, Drawable.ConstantState> f881k0;

    /* JADX INFO: renamed from: l0 */
    private final View.OnClickListener f882l0;

    /* JADX INFO: renamed from: m0 */
    View.OnKeyListener f883m0;

    /* JADX INFO: renamed from: n0 */
    private final TextView.OnEditorActionListener f884n0;

    /* JADX INFO: renamed from: o0 */
    private final AdapterView.OnItemClickListener f885o0;

    /* JADX INFO: renamed from: p0 */
    private final AdapterView.OnItemSelectedListener f886p0;

    /* JADX INFO: renamed from: q */
    final SearchAutoComplete f887q;

    /* JADX INFO: renamed from: q0 */
    private TextWatcher f888q0;

    /* JADX INFO: renamed from: r */
    private final View f889r;

    /* JADX INFO: renamed from: s */
    private final View f890s;

    /* JADX INFO: renamed from: t */
    private final View f891t;

    /* JADX INFO: renamed from: u */
    final ImageView f892u;

    /* JADX INFO: renamed from: v */
    final ImageView f893v;

    /* JADX INFO: renamed from: w */
    final ImageView f894w;

    /* JADX INFO: renamed from: x */
    final ImageView f895x;

    /* JADX INFO: renamed from: y */
    private final View f896y;

    /* JADX INFO: renamed from: z */
    private C0142p f897z;

    public static class SearchAutoComplete extends C0160d {

        /* JADX INFO: renamed from: e */
        private int f898e;

        /* JADX INFO: renamed from: f */
        private SearchView f899f;

        /* JADX INFO: renamed from: g */
        private boolean f900g;

        /* JADX INFO: renamed from: h */
        final Runnable f901h;

        /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$SearchAutoComplete$a */
        class RunnableC0126a implements Runnable {
            RunnableC0126a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.m936c();
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, C0493a.autoCompleteTextViewStyle);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i < 600) {
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 192;
        }

        /* JADX INFO: renamed from: a */
        void m934a() {
            if (Build.VERSION.SDK_INT < 29) {
                SearchView.f847r0.m945c(this);
                return;
            }
            setInputMethodMode(1);
            if (enoughToFilter()) {
                showDropDown();
            }
        }

        /* JADX INFO: renamed from: b */
        boolean m935b() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        /* JADX INFO: renamed from: c */
        void m936c() {
            if (this.f900g) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f900g = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f898e <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.C0160d, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f900g) {
                removeCallbacks(this.f901h);
                post(this.f901h);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.f899f.m930Z();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f899f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f899f.hasFocus() && getVisibility() == 0) {
                this.f900g = true;
                if (SearchView.m905M(getContext())) {
                    m934a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f900g = false;
                removeCallbacks(this.f901h);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f900g = true;
                    return;
                }
                this.f900g = false;
                removeCallbacks(this.f901h);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        void setSearchView(SearchView searchView) {
            this.f899f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f898e = i;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f901h = new RunnableC0126a();
            this.f898e = getThreshold();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$a */
    class C0127a implements TextWatcher {
        C0127a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView.this.m929Y(charSequence);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$b */
    class RunnableC0128b implements Runnable {
        RunnableC0128b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.m933f0();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$c */
    class RunnableC0129c implements Runnable {
        RunnableC0129c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0627a abstractC0627a = SearchView.this.f866S;
            if (abstractC0627a instanceof ViewOnClickListenerC0183o0) {
                abstractC0627a.mo1267b(null);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$d */
    class ViewOnFocusChangeListenerC0130d implements View.OnFocusChangeListener {
        ViewOnFocusChangeListenerC0130d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f861N;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$e */
    class ViewOnLayoutChangeListenerC0131e implements View.OnLayoutChangeListener {
        ViewOnLayoutChangeListenerC0131e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView.this.m918B();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$f */
    class ViewOnClickListenerC0132f implements View.OnClickListener {
        ViewOnClickListenerC0132f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f892u) {
                searchView.m926V();
                return;
            }
            if (view == searchView.f894w) {
                searchView.m922R();
                return;
            }
            if (view == searchView.f893v) {
                searchView.m927W();
            } else if (view == searchView.f895x) {
                searchView.m931a0();
            } else if (view == searchView.f887q) {
                searchView.m919H();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$g */
    class ViewOnKeyListenerC0133g implements View.OnKeyListener {
        ViewOnKeyListenerC0133g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.f877g0 == null) {
                return false;
            }
            if (searchView.f887q.isPopupShowing() && SearchView.this.f887q.getListSelection() != -1) {
                return SearchView.this.m928X(view, i, keyEvent);
            }
            if (SearchView.this.f887q.m935b() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.m921P(0, null, searchView2.f887q.getText().toString());
            return true;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$h */
    class C0134h implements TextView.OnEditorActionListener {
        C0134h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.m927W();
            return true;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$i */
    class C0135i implements AdapterView.OnItemClickListener {
        C0135i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m923S(i, 0, null);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$j */
    class C0136j implements AdapterView.OnItemSelectedListener {
        C0136j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m924T(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$k */
    public interface InterfaceC0137k {
        /* JADX INFO: renamed from: a */
        boolean m937a();
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$l */
    public interface InterfaceC0138l {
        /* JADX INFO: renamed from: a */
        boolean m938a(String str);

        /* JADX INFO: renamed from: b */
        boolean m939b(String str);
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$m */
    public interface InterfaceC0139m {
        /* JADX INFO: renamed from: a */
        boolean m940a(int i);

        /* JADX INFO: renamed from: b */
        boolean m941b(int i);
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$n */
    private static class C0140n {

        /* JADX INFO: renamed from: a */
        private Method f913a;

        /* JADX INFO: renamed from: b */
        private Method f914b;

        /* JADX INFO: renamed from: c */
        private Method f915c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        C0140n() {
            this.f913a = null;
            this.f914b = null;
            this.f915c = null;
            m942d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f913a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f914b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f915c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        /* JADX INFO: renamed from: d */
        private static void m942d() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        /* JADX INFO: renamed from: a */
        void m943a(AutoCompleteTextView autoCompleteTextView) {
            m942d();
            Method method = this.f914b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        /* JADX INFO: renamed from: b */
        void m944b(AutoCompleteTextView autoCompleteTextView) {
            m942d();
            Method method = this.f913a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        /* JADX INFO: renamed from: c */
        void m945c(AutoCompleteTextView autoCompleteTextView) {
            m942d();
            Method method = this.f915c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$o */
    static class C0141o extends AbstractC0630a {
        public static final Parcelable.Creator<C0141o> CREATOR = new a();

        /* JADX INFO: renamed from: d */
        boolean f916d;

        /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$o$a */
        class a implements Parcelable.ClassLoaderCreator<C0141o> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0141o createFromParcel(Parcel parcel) {
                return new C0141o(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C0141o createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0141o(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public C0141o[] newArray(int i) {
                return new C0141o[i];
            }
        }

        C0141o(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f916d + "}";
        }

        @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f916d));
        }

        public C0141o(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f916d = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$p */
    private static class C0142p extends TouchDelegate {

        /* JADX INFO: renamed from: a */
        private final View f917a;

        /* JADX INFO: renamed from: b */
        private final Rect f918b;

        /* JADX INFO: renamed from: c */
        private final Rect f919c;

        /* JADX INFO: renamed from: d */
        private final Rect f920d;

        /* JADX INFO: renamed from: e */
        private final int f921e;

        /* JADX INFO: renamed from: f */
        private boolean f922f;

        public C0142p(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f921e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f918b = new Rect();
            this.f920d = new Rect();
            this.f919c = new Rect();
            m949a(rect, rect2);
            this.f917a = view;
        }

        /* JADX INFO: renamed from: a */
        public void m949a(Rect rect, Rect rect2) {
            this.f918b.set(rect);
            this.f920d.set(rect);
            Rect rect3 = this.f920d;
            int i = this.f921e;
            rect3.inset(-i, -i);
            this.f919c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z2 = this.f922f;
                    if (z2 && !this.f920d.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f922f;
                        this.f922f = false;
                    }
                    z = true;
                    z3 = false;
                }
                z3 = z2;
                z = true;
            } else {
                if (this.f918b.contains(x, y)) {
                    this.f922f = true;
                    z = true;
                }
                z = true;
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            if (!z || this.f919c.contains(x, y)) {
                Rect rect = this.f919c;
                motionEvent.setLocation(x - rect.left, y - rect.top);
            } else {
                motionEvent.setLocation(this.f917a.getWidth() / 2, this.f917a.getHeight() / 2);
            }
            return this.f917a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        f847r0 = Build.VERSION.SDK_INT < 29 ? new C0140n() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    /* JADX INFO: renamed from: C */
    private Intent m897C(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f874d0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f878h0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f877g0.getSearchActivity());
        return intent;
    }

    /* JADX INFO: renamed from: D */
    private Intent m898D(Cursor cursor, int i, String str) {
        int position;
        String strM1257o;
        try {
            try {
                String strM1257o2 = ViewOnClickListenerC0183o0.m1257o(cursor, "suggest_intent_action");
                if (strM1257o2 == null) {
                    strM1257o2 = this.f877g0.getSuggestIntentAction();
                }
                if (strM1257o2 == null) {
                    strM1257o2 = "android.intent.action.SEARCH";
                }
                String str2 = strM1257o2;
                String strM1257o3 = ViewOnClickListenerC0183o0.m1257o(cursor, "suggest_intent_data");
                if (strM1257o3 == null) {
                    strM1257o3 = this.f877g0.getSuggestIntentData();
                }
                if (strM1257o3 != null && (strM1257o = ViewOnClickListenerC0183o0.m1257o(cursor, "suggest_intent_data_id")) != null) {
                    strM1257o3 = strM1257o3 + "/" + Uri.encode(strM1257o);
                }
                return m897C(str2, strM1257o3 == null ? null : Uri.parse(strM1257o3), ViewOnClickListenerC0183o0.m1257o(cursor, "suggest_intent_extra_data"), ViewOnClickListenerC0183o0.m1257o(cursor, "suggest_intent_query"), i, str);
            } catch (RuntimeException unused) {
                position = -1;
                String str3 = "Search suggestions cursor at row " + position + " returned exception.";
                return null;
            }
        } catch (RuntimeException unused2) {
            position = cursor.getPosition();
            String str32 = "Search suggestions cursor at row " + position + " returned exception.";
            return null;
        }
    }

    /* JADX INFO: renamed from: E */
    private Intent m899E(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f878h0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    /* JADX INFO: renamed from: F */
    private Intent m900F(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    /* JADX INFO: renamed from: G */
    private void m901G() {
        this.f887q.dismissDropDown();
    }

    /* JADX INFO: renamed from: I */
    private void m902I(View view, Rect rect) {
        view.getLocationInWindow(this.f850C);
        getLocationInWindow(this.f851D);
        int[] iArr = this.f850C;
        int i = iArr[1];
        int[] iArr2 = this.f851D;
        int i2 = i - iArr2[1];
        int i3 = iArr[0] - iArr2[0];
        rect.set(i3, i2, view.getWidth() + i3, view.getHeight() + i2);
    }

    /* JADX INFO: renamed from: J */
    private CharSequence m903J(CharSequence charSequence) {
        if (!this.f864Q || this.f853F == null) {
            return charSequence;
        }
        double textSize = this.f887q.getTextSize();
        Double.isNaN(textSize);
        int i = (int) (textSize * 1.25d);
        this.f853F.setBounds(0, 0, i, i);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f853F), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    /* JADX INFO: renamed from: K */
    private boolean m904K() {
        SearchableInfo searchableInfo = this.f877g0;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.f877g0.getVoiceSearchLaunchWebSearch()) {
            intent = this.f856I;
        } else if (this.f877g0.getVoiceSearchLaunchRecognizer()) {
            intent = this.f857J;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    /* JADX INFO: renamed from: M */
    static boolean m905M(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* JADX INFO: renamed from: N */
    private boolean m906N() {
        return (this.f867T || this.f872b0) && !m920L();
    }

    /* JADX INFO: renamed from: O */
    private void m907O(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException unused) {
            String str = "Failed launch activity: " + intent;
        }
    }

    /* JADX INFO: renamed from: Q */
    private boolean m908Q(int i, int i2, String str) {
        Cursor cursorMo4857c = this.f866S.mo4857c();
        if (cursorMo4857c == null || !cursorMo4857c.moveToPosition(i)) {
            return false;
        }
        m907O(m898D(cursorMo4857c, i2, str));
        return true;
    }

    /* JADX INFO: renamed from: b0 */
    private void m909b0() {
        post(this.f879i0);
    }

    /* JADX INFO: renamed from: c0 */
    private void m910c0(int i) {
        Editable text = this.f887q.getText();
        Cursor cursorMo4857c = this.f866S.mo4857c();
        if (cursorMo4857c == null) {
            return;
        }
        if (!cursorMo4857c.moveToPosition(i)) {
            setQuery(text);
            return;
        }
        CharSequence charSequenceMo1266a = this.f866S.mo1266a(cursorMo4857c);
        if (charSequenceMo1266a != null) {
            setQuery(charSequenceMo1266a);
        } else {
            setQuery(text);
        }
    }

    /* JADX INFO: renamed from: e0 */
    private void m911e0() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f887q.getText());
        if (!z2 && (!this.f864Q || this.f875e0)) {
            z = false;
        }
        this.f894w.setVisibility(z ? 0 : 8);
        Drawable drawable = this.f894w.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    /* JADX INFO: renamed from: g0 */
    private void m912g0() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f887q;
        if (queryHint == null) {
            queryHint = BuildConfig.FLAVOR;
        }
        searchAutoComplete.setHint(m903J(queryHint));
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(C0496d.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(C0496d.abc_search_view_preferred_width);
    }

    /* JADX INFO: renamed from: h0 */
    private void m913h0() {
        this.f887q.setThreshold(this.f877g0.getSuggestThreshold());
        this.f887q.setImeOptions(this.f877g0.getImeOptions());
        int inputType = this.f877g0.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.f877g0.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.f887q.setInputType(inputType);
        AbstractC0627a abstractC0627a = this.f866S;
        if (abstractC0627a != null) {
            abstractC0627a.mo1267b(null);
        }
        if (this.f877g0.getSuggestAuthority() != null) {
            ViewOnClickListenerC0183o0 viewOnClickListenerC0183o0 = new ViewOnClickListenerC0183o0(getContext(), this, this.f877g0, this.f881k0);
            this.f866S = viewOnClickListenerC0183o0;
            this.f887q.setAdapter(viewOnClickListenerC0183o0);
            ((ViewOnClickListenerC0183o0) this.f866S).m1273x(this.f869V ? 2 : 1);
        }
    }

    /* JADX INFO: renamed from: i0 */
    private void m914i0() {
        this.f891t.setVisibility((m906N() && (this.f893v.getVisibility() == 0 || this.f895x.getVisibility() == 0)) ? 0 : 8);
    }

    /* JADX INFO: renamed from: j0 */
    private void m915j0(boolean z) {
        this.f893v.setVisibility((this.f867T && m906N() && hasFocus() && (z || !this.f872b0)) ? 0 : 8);
    }

    /* JADX INFO: renamed from: k0 */
    private void m916k0(boolean z) {
        this.f865R = z;
        int i = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.f887q.getText());
        this.f892u.setVisibility(i);
        m915j0(z2);
        this.f889r.setVisibility(z ? 8 : 0);
        this.f852E.setVisibility((this.f852E.getDrawable() == null || this.f864Q) ? 8 : 0);
        m911e0();
        m917l0(!z2);
        m914i0();
    }

    /* JADX INFO: renamed from: l0 */
    private void m917l0(boolean z) {
        int i = 8;
        if (this.f872b0 && !m920L() && z) {
            this.f893v.setVisibility(8);
            i = 0;
        }
        this.f895x.setVisibility(i);
    }

    private void setQuery(CharSequence charSequence) {
        this.f887q.setText(charSequence);
        this.f887q.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* JADX INFO: renamed from: B */
    void m918B() {
        if (this.f896y.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f890s.getPaddingLeft();
            Rect rect = new Rect();
            boolean zM1022b = C0154a1.m1022b(this);
            int dimensionPixelSize = this.f864Q ? resources.getDimensionPixelSize(C0496d.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(C0496d.abc_dropdownitem_text_padding_left) : 0;
            this.f887q.getDropDownBackground().getPadding(rect);
            this.f887q.setDropDownHorizontalOffset(zM1022b ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f887q.setDropDownWidth((((this.f896y.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    /* JADX INFO: renamed from: H */
    void m919H() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f887q.refreshAutoCompleteResults();
        } else {
            f847r0.m944b(this.f887q);
            f847r0.m943a(this.f887q);
        }
    }

    /* JADX INFO: renamed from: L */
    public boolean m920L() {
        return this.f865R;
    }

    /* JADX INFO: renamed from: P */
    void m921P(int i, String str, String str2) {
        getContext().startActivity(m897C("android.intent.action.SEARCH", null, null, str2, i, str));
    }

    /* JADX INFO: renamed from: R */
    void m922R() {
        if (!TextUtils.isEmpty(this.f887q.getText())) {
            this.f887q.setText(BuildConfig.FLAVOR);
            this.f887q.requestFocus();
            this.f887q.setImeVisibility(true);
        } else if (this.f864Q) {
            InterfaceC0137k interfaceC0137k = this.f860M;
            if (interfaceC0137k == null || !interfaceC0137k.m937a()) {
                clearFocus();
                m916k0(true);
            }
        }
    }

    /* JADX INFO: renamed from: S */
    boolean m923S(int i, int i2, String str) {
        InterfaceC0139m interfaceC0139m = this.f862O;
        if (interfaceC0139m != null && interfaceC0139m.m941b(i)) {
            return false;
        }
        m908Q(i, 0, null);
        this.f887q.setImeVisibility(false);
        m901G();
        return true;
    }

    /* JADX INFO: renamed from: T */
    boolean m924T(int i) {
        InterfaceC0139m interfaceC0139m = this.f862O;
        if (interfaceC0139m != null && interfaceC0139m.m940a(i)) {
            return false;
        }
        m910c0(i);
        return true;
    }

    /* JADX INFO: renamed from: U */
    void m925U(CharSequence charSequence) {
        setQuery(charSequence);
    }

    /* JADX INFO: renamed from: V */
    void m926V() {
        m916k0(false);
        this.f887q.requestFocus();
        this.f887q.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f863P;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* JADX INFO: renamed from: W */
    void m927W() {
        Editable text = this.f887q.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        InterfaceC0138l interfaceC0138l = this.f859L;
        if (interfaceC0138l == null || !interfaceC0138l.m939b(text.toString())) {
            if (this.f877g0 != null) {
                m921P(0, null, text.toString());
            }
            this.f887q.setImeVisibility(false);
            m901G();
        }
    }

    /* JADX INFO: renamed from: X */
    boolean m928X(View view, int i, KeyEvent keyEvent) {
        if (this.f877g0 != null && this.f866S != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i == 66 || i == 84 || i == 61) {
                return m923S(this.f887q.getListSelection(), 0, null);
            }
            if (i == 21 || i == 22) {
                this.f887q.setSelection(i == 21 ? 0 : this.f887q.length());
                this.f887q.setListSelection(0);
                this.f887q.clearListSelection();
                this.f887q.m934a();
                return true;
            }
            if (i != 19 || this.f887q.getListSelection() == 0) {
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: Y */
    void m929Y(CharSequence charSequence) {
        Editable text = this.f887q.getText();
        this.f874d0 = text;
        boolean z = !TextUtils.isEmpty(text);
        m915j0(z);
        m917l0(!z);
        m911e0();
        m914i0();
        if (this.f859L != null && !TextUtils.equals(charSequence, this.f873c0)) {
            this.f859L.m938a(charSequence.toString());
        }
        this.f873c0 = charSequence.toString();
    }

    /* JADX INFO: renamed from: Z */
    void m930Z() {
        m916k0(m920L());
        m909b0();
        if (this.f887q.hasFocus()) {
            m919H();
        }
    }

    /* JADX INFO: renamed from: a0 */
    void m931a0() {
        SearchableInfo searchableInfo = this.f877g0;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(m900F(this.f856I, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(m899E(this.f857J, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
        }
    }

    @Override // p016c.p017a.p024o.InterfaceC0513c
    /* JADX INFO: renamed from: c */
    public void mo812c() {
        if (this.f875e0) {
            return;
        }
        this.f875e0 = true;
        int imeOptions = this.f887q.getImeOptions();
        this.f876f0 = imeOptions;
        this.f887q.setImeOptions(imeOptions | 33554432);
        this.f887q.setText(BuildConfig.FLAVOR);
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f870W = true;
        super.clearFocus();
        this.f887q.clearFocus();
        this.f887q.setImeVisibility(false);
        this.f870W = false;
    }

    @Override // p016c.p017a.p024o.InterfaceC0513c
    /* JADX INFO: renamed from: d */
    public void mo813d() {
        m932d0(BuildConfig.FLAVOR, false);
        clearFocus();
        m916k0(true);
        this.f887q.setImeOptions(this.f876f0);
        this.f875e0 = false;
    }

    /* JADX INFO: renamed from: d0 */
    public void m932d0(CharSequence charSequence, boolean z) {
        this.f887q.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f887q;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f874d0 = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        m927W();
    }

    /* JADX INFO: renamed from: f0 */
    void m933f0() {
        int[] iArr = this.f887q.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f890s.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f891t.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public int getImeOptions() {
        return this.f887q.getImeOptions();
    }

    public int getInputType() {
        return this.f887q.getInputType();
    }

    public int getMaxWidth() {
        return this.f871a0;
    }

    public CharSequence getQuery() {
        return this.f887q.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f868U;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f877g0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f858K : getContext().getText(this.f877g0.getHintId());
    }

    int getSuggestionCommitIconResId() {
        return this.f855H;
    }

    int getSuggestionRowLayout() {
        return this.f854G;
    }

    public AbstractC0627a getSuggestionsAdapter() {
        return this.f866S;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f879i0);
        post(this.f880j0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.C0167g0, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m902I(this.f887q, this.f848A);
            Rect rect = this.f849B;
            Rect rect2 = this.f848A;
            rect.set(rect2.left, 0, rect2.right, i4 - i2);
            C0142p c0142p = this.f897z;
            if (c0142p != null) {
                c0142p.m949a(this.f849B, this.f848A);
                return;
            }
            C0142p c0142p2 = new C0142p(this.f849B, this.f848A, this.f887q);
            this.f897z = c0142p2;
            setTouchDelegate(c0142p2);
        }
    }

    @Override // androidx.appcompat.widget.C0167g0, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        if (m920L()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.f871a0;
            size = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.f871a0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i3 = this.f871a0) > 0) {
            size = Math.min(i3, size);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0141o)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0141o c0141o = (C0141o) parcelable;
        super.onRestoreInstanceState(c0141o.m4862j());
        m916k0(c0141o.f916d);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C0141o c0141o = new C0141o(super.onSaveInstanceState());
        c0141o.f916d = m920L();
        return c0141o;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m909b0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.f870W || !isFocusable()) {
            return false;
        }
        if (m920L()) {
            return super.requestFocus(i, rect);
        }
        boolean zRequestFocus = this.f887q.requestFocus(i, rect);
        if (zRequestFocus) {
            m916k0(false);
        }
        return zRequestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.f878h0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m922R();
        } else {
            m926V();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f864Q == z) {
            return;
        }
        this.f864Q = z;
        m916k0(z);
        m912g0();
    }

    public void setImeOptions(int i) {
        this.f887q.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f887q.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f871a0 = i;
        requestLayout();
    }

    public void setOnCloseListener(InterfaceC0137k interfaceC0137k) {
        this.f860M = interfaceC0137k;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f861N = onFocusChangeListener;
    }

    public void setOnQueryTextListener(InterfaceC0138l interfaceC0138l) {
        this.f859L = interfaceC0138l;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f863P = onClickListener;
    }

    public void setOnSuggestionListener(InterfaceC0139m interfaceC0139m) {
        this.f862O = interfaceC0139m;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f868U = charSequence;
        m912g0();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f869V = z;
        AbstractC0627a abstractC0627a = this.f866S;
        if (abstractC0627a instanceof ViewOnClickListenerC0183o0) {
            ((ViewOnClickListenerC0183o0) abstractC0627a).m1273x(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f877g0 = searchableInfo;
        if (searchableInfo != null) {
            m913h0();
            m912g0();
        }
        boolean zM904K = m904K();
        this.f872b0 = zM904K;
        if (zM904K) {
            this.f887q.setPrivateImeOptions("nm");
        }
        m916k0(m920L());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f867T = z;
        m916k0(m920L());
    }

    public void setSuggestionsAdapter(AbstractC0627a abstractC0627a) {
        this.f866S = abstractC0627a;
        this.f887q.setAdapter(abstractC0627a);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f848A = new Rect();
        this.f849B = new Rect();
        this.f850C = new int[2];
        this.f851D = new int[2];
        this.f879i0 = new RunnableC0128b();
        this.f880j0 = new RunnableC0129c();
        this.f881k0 = new WeakHashMap<>();
        this.f882l0 = new ViewOnClickListenerC0132f();
        this.f883m0 = new ViewOnKeyListenerC0133g();
        this.f884n0 = new C0134h();
        this.f885o0 = new C0135i();
        this.f886p0 = new C0136j();
        this.f888q0 = new C0127a();
        C0195u0 c0195u0M1321v = C0195u0.m1321v(context, attributeSet, C0502j.SearchView, i, 0);
        LayoutInflater.from(context).inflate(c0195u0M1321v.m1335n(C0502j.SearchView_layout, C0499g.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(C0498f.search_src_text);
        this.f887q = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f889r = findViewById(C0498f.search_edit_frame);
        this.f890s = findViewById(C0498f.search_plate);
        this.f891t = findViewById(C0498f.submit_area);
        this.f892u = (ImageView) findViewById(C0498f.search_button);
        this.f893v = (ImageView) findViewById(C0498f.search_go_btn);
        this.f894w = (ImageView) findViewById(C0498f.search_close_btn);
        this.f895x = (ImageView) findViewById(C0498f.search_voice_btn);
        this.f852E = (ImageView) findViewById(C0498f.search_mag_icon);
        C0292v.m2111r0(this.f890s, c0195u0M1321v.m1328g(C0502j.SearchView_queryBackground));
        C0292v.m2111r0(this.f891t, c0195u0M1321v.m1328g(C0502j.SearchView_submitBackground));
        this.f892u.setImageDrawable(c0195u0M1321v.m1328g(C0502j.SearchView_searchIcon));
        this.f893v.setImageDrawable(c0195u0M1321v.m1328g(C0502j.SearchView_goIcon));
        this.f894w.setImageDrawable(c0195u0M1321v.m1328g(C0502j.SearchView_closeIcon));
        this.f895x.setImageDrawable(c0195u0M1321v.m1328g(C0502j.SearchView_voiceIcon));
        this.f852E.setImageDrawable(c0195u0M1321v.m1328g(C0502j.SearchView_searchIcon));
        this.f853F = c0195u0M1321v.m1328g(C0502j.SearchView_searchHintIcon);
        C0199w0.m1388a(this.f892u, getResources().getString(C0500h.abc_searchview_description_search));
        this.f854G = c0195u0M1321v.m1335n(C0502j.SearchView_suggestionRowLayout, C0499g.abc_search_dropdown_item_icons_2line);
        this.f855H = c0195u0M1321v.m1335n(C0502j.SearchView_commitIcon, 0);
        this.f892u.setOnClickListener(this.f882l0);
        this.f894w.setOnClickListener(this.f882l0);
        this.f893v.setOnClickListener(this.f882l0);
        this.f895x.setOnClickListener(this.f882l0);
        this.f887q.setOnClickListener(this.f882l0);
        this.f887q.addTextChangedListener(this.f888q0);
        this.f887q.setOnEditorActionListener(this.f884n0);
        this.f887q.setOnItemClickListener(this.f885o0);
        this.f887q.setOnItemSelectedListener(this.f886p0);
        this.f887q.setOnKeyListener(this.f883m0);
        this.f887q.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0130d());
        setIconifiedByDefault(c0195u0M1321v.m1322a(C0502j.SearchView_iconifiedByDefault, true));
        int iM1327f = c0195u0M1321v.m1327f(C0502j.SearchView_android_maxWidth, -1);
        if (iM1327f != -1) {
            setMaxWidth(iM1327f);
        }
        this.f858K = c0195u0M1321v.m1337p(C0502j.SearchView_defaultQueryHint);
        this.f868U = c0195u0M1321v.m1337p(C0502j.SearchView_queryHint);
        int iM1332k = c0195u0M1321v.m1332k(C0502j.SearchView_android_imeOptions, -1);
        if (iM1332k != -1) {
            setImeOptions(iM1332k);
        }
        int iM1332k2 = c0195u0M1321v.m1332k(C0502j.SearchView_android_inputType, -1);
        if (iM1332k2 != -1) {
            setInputType(iM1332k2);
        }
        setFocusable(c0195u0M1321v.m1322a(C0502j.SearchView_android_focusable, true));
        c0195u0M1321v.m1341w();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f856I = intent;
        intent.addFlags(268435456);
        this.f856I.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f857J = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById = findViewById(this.f887q.getDropDownAnchor());
        this.f896y = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC0131e());
        }
        m916k0(this.f864Q);
        m912g0();
    }
}
