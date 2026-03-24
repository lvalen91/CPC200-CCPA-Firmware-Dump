package c.p;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class r {
    private static final boolean a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f1314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f1315c;

    static {
        a = Build.VERSION.SDK_INT >= 19;
        f1314b = Build.VERSION.SDK_INT >= 18;
        f1315c = Build.VERSION.SDK_INT >= 28;
    }

    static View a(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        c0.i(view, matrix);
        c0.j(viewGroup, matrix);
        RectF rectF = new RectF(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int iRound = Math.round(rectF.left);
        int iRound2 = Math.round(rectF.top);
        int iRound3 = Math.round(rectF.right);
        int iRound4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap bitmapB = b(view, matrix, rectF, viewGroup);
        if (bitmapB != null) {
            imageView.setImageBitmap(bitmapB);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound3 - iRound, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, 1073741824));
        imageView.layout(iRound, iRound2, iRound3, iRound4);
        return imageView;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Bitmap b(View view, Matrix matrix, RectF rectF, ViewGroup viewGroup) {
        boolean z;
        boolean zIsAttachedToWindow;
        ViewGroup viewGroup2;
        int iIndexOfChild;
        int iRound;
        int iRound2;
        if (a) {
            z = !view.isAttachedToWindow();
            if (viewGroup != null) {
                zIsAttachedToWindow = viewGroup.isAttachedToWindow();
            }
            Bitmap bitmapCreateBitmap = null;
            if (f1314b || !z) {
                viewGroup2 = null;
                iIndexOfChild = 0;
            } else {
                if (!zIsAttachedToWindow) {
                    return null;
                }
                viewGroup2 = (ViewGroup) view.getParent();
                iIndexOfChild = viewGroup2.indexOfChild(view);
                viewGroup.getOverlay().add(view);
            }
            iRound = Math.round(rectF.width());
            iRound2 = Math.round(rectF.height());
            if (iRound > 0 && iRound2 > 0) {
                float fMin = Math.min(1.0f, 1048576.0f / (iRound * iRound2));
                int iRound3 = Math.round(iRound * fMin);
                int iRound4 = Math.round(iRound2 * fMin);
                matrix.postTranslate(-rectF.left, -rectF.top);
                matrix.postScale(fMin, fMin);
                if (f1315c) {
                    bitmapCreateBitmap = Bitmap.createBitmap(iRound3, iRound4, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    canvas.concat(matrix);
                    view.draw(canvas);
                } else {
                    Picture picture = new Picture();
                    Canvas canvasBeginRecording = picture.beginRecording(iRound3, iRound4);
                    canvasBeginRecording.concat(matrix);
                    view.draw(canvasBeginRecording);
                    picture.endRecording();
                    bitmapCreateBitmap = Bitmap.createBitmap(picture);
                }
            }
            if (f1314b && z) {
                viewGroup.getOverlay().remove(view);
                viewGroup2.addView(view, iIndexOfChild);
            }
            return bitmapCreateBitmap;
        }
        z = false;
        zIsAttachedToWindow = false;
        Bitmap bitmapCreateBitmap2 = null;
        if (f1314b) {
            viewGroup2 = null;
            iIndexOfChild = 0;
        }
        iRound = Math.round(rectF.width());
        iRound2 = Math.round(rectF.height());
        if (iRound > 0) {
            float fMin2 = Math.min(1.0f, 1048576.0f / (iRound * iRound2));
            int iRound32 = Math.round(iRound * fMin2);
            int iRound42 = Math.round(iRound2 * fMin2);
            matrix.postTranslate(-rectF.left, -rectF.top);
            matrix.postScale(fMin2, fMin2);
            if (f1315c) {
            }
        }
        if (f1314b) {
            viewGroup.getOverlay().remove(view);
            viewGroup2.addView(view, iIndexOfChild);
        }
        return bitmapCreateBitmap2;
    }

    static Animator c(Animator animator, Animator animator2) {
        if (animator == null) {
            return animator2;
        }
        if (animator2 == null) {
            return animator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animator, animator2);
        return animatorSet;
    }
}
