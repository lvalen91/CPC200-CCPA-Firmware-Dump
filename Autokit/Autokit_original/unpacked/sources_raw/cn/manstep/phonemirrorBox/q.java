package cn.manstep.phonemirrorBox;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.yalantis.ucrop.BuildConfig;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Stack;
import org.json.JSONObject;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class q implements Thread.UncaughtExceptionHandler {
    private static Stack<Activity> f;
    private static q g;
    private Thread a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f1817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f1818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f1819d;
    private String e;

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            if (q.this.f1818c != null) {
                try {
                    cn.manstep.phonemirrorBox.widget.a.a(q.this.f1818c, 2131689498);
                } catch (Exception e) {
                    cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
                }
            }
            Looper.loop();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1821b;

        b(String str) {
            this.f1821b = str;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(15:0|2|(5:62|3|4|60|5)|(2:64|6)|(4:7|(1:9)(1:66)|52|53)|10|(4:11|(1:13)(1:67)|52|53)|14|56|15|(1:17)|(1:69)|52|53|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0117, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0118, code lost:
        
            android.util.Log.getStackTraceString(r0);
         */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0140  */
        /* JADX WARN: Removed duplicated region for block: B:68:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() throws Throwable {
            InputStream inputStream;
            HttpURLConnection httpURLConnection;
            InputStream inputStream2;
            String str;
            DataOutputStream dataOutputStream;
            FileInputStream fileInputStream;
            byte[] bArr;
            DataOutputStream dataOutputStream2 = null;
            inputStream = null;
            InputStream inputStream3 = null;
            dataOutputStream = null;
            dataOutputStream2 = null;
            DataOutputStream dataOutputStream3 = null;
            try {
                httpURLConnection = (HttpURLConnection) new URL("http://112.74.112.110/autoplaybox/upload_log.php").openConnection();
                try {
                    httpURLConnection.setReadTimeout(10000);
                    httpURLConnection.setConnectTimeout(10000);
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty("Charset", "utf-8");
                    httpURLConnection.setRequestProperty("connection", "keep-alive");
                    httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=*******");
                    str = u.z().I().substring(0, 12) + "_CrashLog.log";
                    dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                } catch (Exception unused) {
                    inputStream2 = null;
                } catch (Throwable th) {
                    th = th;
                    inputStream = null;
                }
            } catch (Exception unused2) {
                inputStream2 = null;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
                httpURLConnection = null;
            }
            try {
                q.this.f(dataOutputStream, "--", "*******", "\r\n");
                dataOutputStream.writeBytes("--*******\r\n");
                dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"log_file\";filename=\"" + str + "\"\r\n");
                dataOutputStream.writeBytes("\r\n");
                fileInputStream = new FileInputStream(this.f1821b);
                bArr = new byte[1024];
            } catch (Exception unused3) {
                inputStream2 = inputStream3;
                dataOutputStream3 = dataOutputStream;
                if (dataOutputStream3 != null) {
                    try {
                        dataOutputStream3.close();
                    } catch (Exception e) {
                        Log.getStackTraceString(e);
                        if (httpURLConnection == null) {
                            return;
                        }
                        httpURLConnection.disconnect();
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                if (httpURLConnection == null) {
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = inputStream3;
                dataOutputStream2 = dataOutputStream;
                if (dataOutputStream2 != null) {
                    try {
                        dataOutputStream2.close();
                    } catch (Exception e2) {
                        Log.getStackTraceString(e2);
                        if (httpURLConnection != null) {
                            throw th;
                        }
                        httpURLConnection.disconnect();
                        throw th;
                    }
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                if (httpURLConnection != null) {
                }
            }
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i == -1) {
                    break;
                } else {
                    dataOutputStream.write(bArr, 0, i);
                }
                httpURLConnection.disconnect();
            }
            dataOutputStream.writeBytes("\r\n");
            dataOutputStream.writeBytes("--*******--\r\n");
            fileInputStream.close();
            dataOutputStream.flush();
            inputStream3 = httpURLConnection.getInputStream();
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                int i2 = inputStream3.read();
                if (i2 == -1) {
                    break;
                } else {
                    stringBuffer.append((char) i2);
                }
                httpURLConnection.disconnect();
            }
            q.this.q(stringBuffer.toString());
            cn.manstep.phonemirrorBox.util.s.d("CrashHandler", stringBuffer.toString());
            dataOutputStream.close();
            if (inputStream3 != null) {
                inputStream3.close();
            }
            if (httpURLConnection == null) {
                return;
            }
            httpURLConnection.disconnect();
        }
    }

    private q() {
        f = new Stack<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(DataOutputStream dataOutputStream, String str, String str2, String str3) {
        String strSubstring = p.a;
        if (strSubstring.length() >= 19) {
            strSubstring = p.a.substring(4, 19);
        }
        if (p.a.length() < 15) {
            strSubstring = "2025.03.19.1126";
        }
        String strC = p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String strC2 = p.c("ro.board.platform", BuildConfig.FLAVOR);
        String str4 = BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")";
        String str5 = Build.MODEL;
        String str6 = p.k + "x" + p.l;
        try {
            dataOutputStream.writeBytes(str + str2 + str3);
            StringBuilder sb = new StringBuilder();
            sb.append("Content-Disposition: form-data; name=\"appVersion\"");
            sb.append(str3);
            dataOutputStream.writeBytes(sb.toString());
            dataOutputStream.writeBytes(str3);
            dataOutputStream.writeBytes(strSubstring + str3);
            dataOutputStream.writeBytes(str + str2 + str3);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Content-Disposition: form-data; name=\"manufacturer\"");
            sb2.append(str3);
            dataOutputStream.writeBytes(sb2.toString());
            dataOutputStream.writeBytes(str3);
            dataOutputStream.writeBytes(strC + str3);
            dataOutputStream.writeBytes(str + str2 + str3);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Content-Disposition: form-data; name=\"platform\"");
            sb3.append(str3);
            dataOutputStream.writeBytes(sb3.toString());
            dataOutputStream.writeBytes(str3);
            dataOutputStream.writeBytes(strC2 + str3);
            dataOutputStream.writeBytes(str + str2 + str3);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Content-Disposition: form-data; name=\"model\"");
            sb4.append(str3);
            dataOutputStream.writeBytes(sb4.toString());
            dataOutputStream.writeBytes(str3);
            dataOutputStream.writeBytes(str5 + str3);
            dataOutputStream.writeBytes(str + str2 + str3);
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Content-Disposition: form-data; name=\"android\"");
            sb5.append(str3);
            dataOutputStream.writeBytes(sb5.toString());
            dataOutputStream.writeBytes(str3);
            dataOutputStream.writeBytes(str4 + str3);
            dataOutputStream.writeBytes(str + str2 + str3);
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Content-Disposition: form-data; name=\"resolution\"");
            sb6.append(str3);
            dataOutputStream.writeBytes(sb6.toString());
            dataOutputStream.writeBytes(str3);
            dataOutputStream.writeBytes(str6 + str3);
            dataOutputStream.writeBytes(str + str2 + str3);
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Content-Disposition: form-data; name=\"uuid\"");
            sb7.append(str3);
            dataOutputStream.writeBytes(sb7.toString());
            dataOutputStream.writeBytes(str3);
            dataOutputStream.writeBytes(u.z().I() + str3);
            if (TextUtils.isEmpty(BuildConfig.FLAVOR)) {
                return;
            }
            dataOutputStream.writeBytes(str + str2 + str3);
            StringBuilder sb8 = new StringBuilder();
            sb8.append("Content-Disposition: form-data; name=\"loc\"");
            sb8.append(str3);
            dataOutputStream.writeBytes(sb8.toString());
            dataOutputStream.writeBytes(str3);
            dataOutputStream.write(BuildConfig.FLAVOR.getBytes());
            dataOutputStream.writeBytes(str3);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static q g() {
        if (g == null) {
            synchronized (q.class) {
                if (g == null) {
                    g = new q();
                }
            }
        }
        return g;
    }

    private boolean i(Throwable th) {
        if (th == null) {
            return false;
        }
        cn.manstep.phonemirrorBox.util.s.f("CrashHandler", "==========handleException============" + cn.manstep.phonemirrorBox.util.s.f1925b);
        new a().start();
        if ("b6850129e15450669e97b9251a5692f1".equals(u.z().I())) {
            return true;
        }
        o(th);
        cn.manstep.phonemirrorBox.util.s.d("CrashHandler", "==========handleException=======close=====" + cn.manstep.phonemirrorBox.util.s.f1925b);
        p(this.f1819d.getAbsolutePath());
        return true;
    }

    private void o(Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append("Name: 37.AutoKit\nTIME: 2025.03.19.1126\nApp:  " + p.a + "\nVER:  10208\nBox:  " + p.f1804b + "\n");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        printWriter.close();
        sb.append(stringWriter.toString());
        cn.manstep.phonemirrorBox.util.s.e(sb.toString());
        cn.manstep.phonemirrorBox.util.n.y(sb.toString().getBytes(), this.f1819d.getAbsolutePath());
    }

    private void p(String str) {
        File fileO = cn.manstep.phonemirrorBox.util.n.o(this.f1818c);
        if (fileO != null) {
            str = cn.manstep.phonemirrorBox.util.n.i(fileO.getAbsolutePath());
            if (str == null) {
                return;
            }
        } else if (str == null || BuildConfig.FLAVOR.equals(str)) {
            return;
        }
        this.e = str;
        Thread thread = new Thread(new b(str), "uploadCrashLog");
        this.a = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(String str) {
        int i;
        cn.manstep.phonemirrorBox.util.s.d("CrashHandler", "日志上传完成: " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String[] strArrSplit = str.split("[$]");
        if (strArrSplit.length == 2) {
            str = strArrSplit[1];
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            i = new JSONObject(str).getInt("error");
        } catch (Exception e) {
            e.printStackTrace();
            cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
            i = -1;
        }
        if (i == 0) {
            cn.manstep.phonemirrorBox.util.n.f(this.e);
        }
    }

    public void a(Context context) {
        try {
            n();
            ((ActivityManager) context.getSystemService("activity")).killBackgroundProcesses(context.getPackageName());
            System.exit(0);
        } catch (Exception unused) {
            Process.killProcess(Process.myPid());
            System.exit(1);
        }
    }

    public void e(Activity activity) {
        if (f == null) {
            f = new Stack<>();
        }
        f.add(activity);
    }

    public MainActivity h() {
        if (f == null) {
            return null;
        }
        for (int i = 0; i < f.size(); i++) {
            if (f.get(i) != null) {
                Activity activity = f.get(i);
                if (activity instanceof MainActivity) {
                    return (MainActivity) activity;
                }
            }
        }
        return null;
    }

    public void j(Context context) {
        this.f1818c = context;
        this.f1817b = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f1819d = new File(cn.manstep.phonemirrorBox.util.n.n(context), "CrashLog.log");
    }

    public boolean k() {
        if (f != null) {
            for (int i = 0; i < f.size(); i++) {
                if (f.get(i) != null && (f.get(i) instanceof MainActivity)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void l(Activity activity) {
        m(activity, true);
    }

    public void m(Activity activity, boolean z) {
        if (activity != null) {
            try {
                f.remove(activity);
                if (z) {
                    activity.finish();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void n() {
        cn.manstep.phonemirrorBox.util.s.d("CrashHandler", "activityStack.size() = " + f.size());
        for (int i = 0; i < f.size(); i++) {
            if (f.get(i) != null) {
                f.get(i).finish();
            }
        }
        f.clear();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (!i(th)) {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f1817b;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
                return;
            }
            return;
        }
        try {
            this.a.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        this.a = null;
        try {
            Thread.sleep(3000L);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        a(this.f1818c);
    }
}
