package p016c.p041g.p042d;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import androidx.core.content.p003c.C0246c;
import java.io.IOException;
import java.io.InputStream;
import p016c.p041g.p047h.C0611f;

/* JADX INFO: renamed from: c.g.d.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0596i extends C0597j {
    @Override // p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: b */
    public Typeface mo4707b(Context context, C0246c.b bVar, Resources resources, int i) {
        try {
            C0246c.c[] cVarArrM1732a = bVar.m1732a();
            int length = cVarArrM1732a.length;
            FontFamily.Builder builder = null;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= length) {
                    break;
                }
                C0246c.c cVar = cVarArrM1732a[i2];
                try {
                    Font.Builder weight = new Font.Builder(resources, cVar.m1734b()).setWeight(cVar.m1737e());
                    if (!cVar.m1738f()) {
                        i3 = 0;
                    }
                    Font fontBuild = weight.setSlant(i3).setTtcIndex(cVar.m1735c()).setFontVariationSettings(cVar.m1736d()).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (IOException unused) {
                }
                i2++;
            }
            if (builder == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c A[Catch: IOException -> 0x005b, Exception -> 0x0086, PHI: r4
      0x001c: PHI (r4v5 android.graphics.fonts.FontFamily$Builder) = (r4v3 android.graphics.fonts.FontFamily$Builder), (r4v1 android.graphics.fonts.FontFamily$Builder) binds: [B:20:0x0051, B:9:0x001a] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #2 {Exception -> 0x0086, blocks: (B:3:0x0005, B:6:0x000c, B:7:0x000e, B:10:0x001c, B:25:0x005a, B:29:0x0061, B:33:0x006c, B:36:0x0071), top: B:45:0x0005 }] */
    @Override // p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Typeface mo4708c(Context context, CancellationSignal cancellationSignal, C0611f.b[] bVarArr, int i) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            int length = bVarArr.length;
            FontFamily.Builder builder = null;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= length) {
                    if (builder == null) {
                        return null;
                    }
                    return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
                }
                C0611f.b bVar = bVarArr[i2];
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(bVar.m4794d(), "r", cancellationSignal);
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        try {
                            Font.Builder weight = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(bVar.m4795e());
                            if (!bVar.m4796f()) {
                                i3 = 0;
                            }
                            Font fontBuild = weight.setSlant(i3).setTtcIndex(bVar.m4793c()).build();
                            if (builder == null) {
                                builder = new FontFamily.Builder(fontBuild);
                            } else {
                                builder.addFont(fontBuild);
                            }
                            if (parcelFileDescriptorOpenFileDescriptor != null) {
                            }
                        } catch (Throwable th) {
                            if (parcelFileDescriptorOpenFileDescriptor != null) {
                                try {
                                    parcelFileDescriptorOpenFileDescriptor.close();
                                } catch (Throwable unused) {
                                }
                            }
                            throw th;
                        }
                    } else if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                } catch (IOException unused2) {
                }
                i2++;
            }
        } catch (Exception unused3) {
            return null;
        }
    }

    @Override // p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: d */
    protected Typeface mo4728d(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: e */
    public Typeface mo4720e(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font fontBuild = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: h */
    protected C0611f.b mo4729h(C0611f.b[] bVarArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
