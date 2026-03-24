package c.g.d;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import androidx.core.content.c.c;
import c.g.h.f;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class i extends j {
    @Override // c.g.d.j
    public Typeface b(Context context, c.b bVar, Resources resources, int i) {
        try {
            c.C0019c[] c0019cArrA = bVar.a();
            int length = c0019cArrA.length;
            FontFamily.Builder builder = null;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= length) {
                    break;
                }
                c.C0019c c0019c = c0019cArrA[i2];
                try {
                    Font.Builder weight = new Font.Builder(resources, c0019c.b()).setWeight(c0019c.e());
                    if (!c0019c.f()) {
                        i3 = 0;
                    }
                    Font fontBuild = weight.setSlant(i3).setTtcIndex(c0019c.c()).setFontVariationSettings(c0019c.d()).build();
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
    @Override // c.g.d.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Typeface c(Context context, CancellationSignal cancellationSignal, f.b[] bVarArr, int i) {
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
                f.b bVar = bVarArr[i2];
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(bVar.d(), "r", cancellationSignal);
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        try {
                            Font.Builder weight = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(bVar.e());
                            if (!bVar.f()) {
                                i3 = 0;
                            }
                            Font fontBuild = weight.setSlant(i3).setTtcIndex(bVar.c()).build();
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

    @Override // c.g.d.j
    protected Typeface d(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // c.g.d.j
    public Typeface e(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font fontBuild = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // c.g.d.j
    protected f.b h(f.b[] bVarArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
