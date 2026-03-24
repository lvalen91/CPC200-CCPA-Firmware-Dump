package cn.manstep.phonemirrorBox;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class MyFileProvider extends ContentProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private UriMatcher f1546b;

    private Uri a(Uri uri) {
        String authority = uri.getAuthority();
        if (authority == null || !authority.contains("@")) {
            return uri;
        }
        return uri.buildUpon().authority(authority.substring(authority.indexOf(64) + 1)).build();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        int iMatch = this.f1546b.match(uri);
        cn.manstep.phonemirrorBox.util.s.d("MyFileProvider", "getType: match=" + iMatch + ",uri=" + uri);
        if (iMatch == 1) {
            return "image/*";
        }
        if (iMatch == 2) {
            return "text/plain";
        }
        throw new IllegalArgumentException("Unknown URI: " + uri);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        String str = getContext().getPackageName() + ".myfileprovider";
        UriMatcher uriMatcher = new UriMatcher(-1);
        this.f1546b = uriMatcher;
        uriMatcher.addURI(str, "tmp_cache_path/*", 1);
        this.f1546b.addURI(str, "box", 2);
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        cn.manstep.phonemirrorBox.util.s.d("MyFileProvider", "openFile: " + uri + "," + uri.getPath());
        if (uri.getPath().contains("/tmp_cache_path/")) {
            try {
                return ParcelFileDescriptor.open(new File(cn.manstep.phonemirrorBox.util.n.q(getContext()), uri.getPath().replace("/tmp_cache_path/", BuildConfig.FLAVOR)), 268435456);
            } catch (FileNotFoundException unused) {
                String str2 = "File not found: " + uri;
            }
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (this.f1546b.match(a(uri)) != 2) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"data"});
        Object[] objArr = new Object[1];
        objArr[0] = d.i() ? "1" : "0";
        matrixCursor.addRow(objArr);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not supported");
    }
}
