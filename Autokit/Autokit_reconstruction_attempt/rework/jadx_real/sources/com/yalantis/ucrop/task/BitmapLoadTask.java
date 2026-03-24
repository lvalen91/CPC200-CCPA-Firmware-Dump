package com.yalantis.ucrop.task;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.yalantis.ucrop.callback.BitmapLoadCallback;
import com.yalantis.ucrop.model.ExifInfo;
import com.yalantis.ucrop.util.BitmapLoadUtils;
import com.yalantis.ucrop.util.FileUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class BitmapLoadTask extends AsyncTask<Void, Void, BitmapWorkerResult> {
    private static final String TAG = "BitmapWorkerTask";
    private final BitmapLoadCallback mBitmapLoadCallback;
    private final Context mContext;
    private Uri mInputUri;
    private Uri mOutputUri;
    private final int mRequiredHeight;
    private final int mRequiredWidth;

    public BitmapLoadTask(Context context, Uri uri, Uri uri2, int i, int i2, BitmapLoadCallback bitmapLoadCallback) {
        this.mContext = context;
        this.mInputUri = uri;
        this.mOutputUri = uri2;
        this.mRequiredWidth = i;
        this.mRequiredHeight = i2;
        this.mBitmapLoadCallback = bitmapLoadCallback;
    }

    private void copyFile(Uri uri, Uri uri2) throws Throwable {
        InputStream inputStreamOpenInputStream;
        FileOutputStream fileOutputStream;
        if (uri2 == null) {
            throw new NullPointerException("Output Uri is null - cannot copy image");
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            inputStreamOpenInputStream = this.mContext.getContentResolver().openInputStream(uri);
            try {
                fileOutputStream = new FileOutputStream(new File(uri2.getPath()));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenInputStream = null;
        }
        try {
            if (inputStreamOpenInputStream == null) {
                throw new NullPointerException("InputStream for given input Uri is null");
            }
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpenInputStream.read(bArr);
                if (i <= 0) {
                    BitmapLoadUtils.close(fileOutputStream);
                    BitmapLoadUtils.close(inputStreamOpenInputStream);
                    this.mInputUri = this.mOutputUri;
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            BitmapLoadUtils.close(fileOutputStream2);
            BitmapLoadUtils.close(inputStreamOpenInputStream);
            this.mInputUri = this.mOutputUri;
            throw th;
        }
    }

    private void downloadFile(Uri uri, Uri uri2) throws Throwable {
        Closeable closeable;
        Response response;
        Response responseExecute;
        BufferedSource bufferedSourceSource;
        if (uri2 == null) {
            throw new NullPointerException("Output Uri is null - cannot download image");
        }
        OkHttpClient okHttpClient = new OkHttpClient();
        BufferedSource bufferedSource = null;
        try {
            responseExecute = okHttpClient.newCall(new Request.Builder().url(uri.toString()).build()).execute();
            try {
                bufferedSourceSource = responseExecute.body().source();
            } catch (Throwable th) {
                th = th;
                response = responseExecute;
                closeable = null;
            }
        } catch (Throwable th2) {
            th = th2;
            closeable = null;
            response = null;
        }
        try {
            OutputStream outputStreamOpenOutputStream = this.mContext.getContentResolver().openOutputStream(uri2);
            if (outputStreamOpenOutputStream == null) {
                throw new NullPointerException("OutputStream for given output Uri is null");
            }
            Sink sink = Okio.sink(outputStreamOpenOutputStream);
            bufferedSourceSource.readAll(sink);
            BitmapLoadUtils.close(bufferedSourceSource);
            BitmapLoadUtils.close(sink);
            if (responseExecute != null) {
                BitmapLoadUtils.close(responseExecute.body());
            }
            okHttpClient.dispatcher().cancelAll();
            this.mInputUri = this.mOutputUri;
        } catch (Throwable th3) {
            th = th3;
            response = responseExecute;
            closeable = null;
            bufferedSource = bufferedSourceSource;
            BitmapLoadUtils.close(bufferedSource);
            BitmapLoadUtils.close(closeable);
            if (response != null) {
                BitmapLoadUtils.close(response.body());
            }
            okHttpClient.dispatcher().cancelAll();
            this.mInputUri = this.mOutputUri;
            throw th;
        }
    }

    private void processInputUri() {
        String scheme = this.mInputUri.getScheme();
        String str = "Uri scheme: " + scheme;
        if ("http".equals(scheme) || "https".equals(scheme)) {
            try {
                downloadFile(this.mInputUri, this.mOutputUri);
                return;
            } catch (IOException | NullPointerException e) {
                throw e;
            }
        }
        if ("content".equals(scheme)) {
            String path = FileUtils.getPath(this.mContext, this.mInputUri);
            if (!TextUtils.isEmpty(path) && new File(path).exists()) {
                this.mInputUri = Uri.fromFile(new File(path));
                return;
            }
            try {
                copyFile(this.mInputUri, this.mOutputUri);
                return;
            } catch (IOException | NullPointerException e2) {
                throw e2;
            }
        }
        if ("file".equals(scheme)) {
            return;
        }
        String str2 = "Invalid Uri scheme " + scheme;
        throw new IllegalArgumentException("Invalid Uri scheme" + scheme);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BitmapWorkerResult doInBackground(Void... voidArr) {
        if (this.mInputUri == null) {
            return new BitmapWorkerResult(new NullPointerException("Input Uri cannot be null"));
        }
        try {
            processInputUri();
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = this.mContext.getContentResolver().openFileDescriptor(this.mInputUri, "r");
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    return new BitmapWorkerResult(new NullPointerException("ParcelFileDescriptor was null for given Uri: [" + this.mInputUri + "]"));
                }
                FileDescriptor fileDescriptor = parcelFileDescriptorOpenFileDescriptor.getFileDescriptor();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                if (options.outWidth == -1 || options.outHeight == -1) {
                    return new BitmapWorkerResult(new IllegalArgumentException("Bounds for bitmap could not be retrieved from the Uri: [" + this.mInputUri + "]"));
                }
                options.inSampleSize = BitmapLoadUtils.calculateInSampleSize(options, this.mRequiredWidth, this.mRequiredHeight);
                boolean z = false;
                options.inJustDecodeBounds = false;
                Bitmap bitmapDecodeFileDescriptor = null;
                while (!z) {
                    try {
                        bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                        z = true;
                    } catch (OutOfMemoryError unused) {
                        options.inSampleSize *= 2;
                    }
                }
                if (bitmapDecodeFileDescriptor == null) {
                    return new BitmapWorkerResult(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.mInputUri + "]"));
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    BitmapLoadUtils.close(parcelFileDescriptorOpenFileDescriptor);
                }
                int exifOrientation = BitmapLoadUtils.getExifOrientation(this.mContext, this.mInputUri);
                int iExifToDegrees = BitmapLoadUtils.exifToDegrees(exifOrientation);
                int iExifToTranslation = BitmapLoadUtils.exifToTranslation(exifOrientation);
                ExifInfo exifInfo = new ExifInfo(exifOrientation, iExifToDegrees, iExifToTranslation);
                Matrix matrix = new Matrix();
                if (iExifToDegrees != 0) {
                    matrix.preRotate(iExifToDegrees);
                }
                if (iExifToTranslation != 1) {
                    matrix.postScale(iExifToTranslation, 1.0f);
                }
                return !matrix.isIdentity() ? new BitmapWorkerResult(BitmapLoadUtils.transformBitmap(bitmapDecodeFileDescriptor, matrix), exifInfo) : new BitmapWorkerResult(bitmapDecodeFileDescriptor, exifInfo);
            } catch (FileNotFoundException e) {
                return new BitmapWorkerResult(e);
            }
        } catch (IOException | NullPointerException e2) {
            return new BitmapWorkerResult(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BitmapWorkerResult bitmapWorkerResult) {
        Exception exc = bitmapWorkerResult.mBitmapWorkerException;
        if (exc != null) {
            this.mBitmapLoadCallback.onFailure(exc);
            return;
        }
        BitmapLoadCallback bitmapLoadCallback = this.mBitmapLoadCallback;
        Bitmap bitmap = bitmapWorkerResult.mBitmapResult;
        ExifInfo exifInfo = bitmapWorkerResult.mExifInfo;
        String path = this.mInputUri.getPath();
        Uri uri = this.mOutputUri;
        bitmapLoadCallback.onBitmapLoaded(bitmap, exifInfo, path, uri == null ? null : uri.getPath());
    }

    public static class BitmapWorkerResult {
        Bitmap mBitmapResult;
        Exception mBitmapWorkerException;
        ExifInfo mExifInfo;

        public BitmapWorkerResult(Bitmap bitmap, ExifInfo exifInfo) {
            this.mBitmapResult = bitmap;
            this.mExifInfo = exifInfo;
        }

        public BitmapWorkerResult(Exception exc) {
            this.mBitmapWorkerException = exc;
        }
    }
}
