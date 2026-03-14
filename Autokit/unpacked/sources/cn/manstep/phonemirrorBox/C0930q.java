package cn.manstep.phonemirrorBox;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.widget.C1000a;
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

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.q */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0930q implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: f */
    private static Stack<Activity> f5910f;

    /* JADX INFO: renamed from: g */
    private static C0930q f5911g;

    /* JADX INFO: renamed from: a */
    private Thread f5912a;

    /* JADX INFO: renamed from: b */
    private Thread.UncaughtExceptionHandler f5913b;

    /* JADX INFO: renamed from: c */
    private Context f5914c;

    /* JADX INFO: renamed from: d */
    private File f5915d;

    /* JADX INFO: renamed from: e */
    private String f5916e;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.q$a */
    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            if (C0930q.this.f5914c != null) {
                try {
                    C1000a.m7488a(C0930q.this.f5914c, 2131689498);
                } catch (Exception e) {
                    C0982s.m7375e(Log.getStackTraceString(e));
                }
            }
            Looper.loop();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.q$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f5918b;

        b(String str) {
            this.f5918b = str;
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
                    str = C0953u.m7001z().m7010I().substring(0, 12) + "_CrashLog.log";
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
                C0930q.this.m6905f(dataOutputStream, "--", "*******", "\r\n");
                dataOutputStream.writeBytes("--*******\r\n");
                dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"log_file\";filename=\"" + str + "\"\r\n");
                dataOutputStream.writeBytes("\r\n");
                fileInputStream = new FileInputStream(this.f5918b);
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
            C0930q.this.m6910q(stringBuffer.toString());
            C0982s.m7374d("CrashHandler", stringBuffer.toString());
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

    private C0930q() {
        f5910f = new Stack<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f */
    public void m6905f(DataOutputStream dataOutputStream, String str, String str2, String str3) {
        String strSubstring = C0925p.f5864a;
        if (strSubstring.length() >= 19) {
            strSubstring = C0925p.f5864a.substring(4, 19);
        }
        if (C0925p.f5864a.length() < 15) {
            strSubstring = "2025.03.19.1126";
        }
        String strM6859c = C0925p.m6859c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String strM6859c2 = C0925p.m6859c("ro.board.platform", BuildConfig.FLAVOR);
        String str4 = BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")";
        String str5 = Build.MODEL;
        String str6 = C0925p.f5874k + "x" + C0925p.f5875l;
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
            dataOutputStream.writeBytes(strM6859c + str3);
            dataOutputStream.writeBytes(str + str2 + str3);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Content-Disposition: form-data; name=\"platform\"");
            sb3.append(str3);
            dataOutputStream.writeBytes(sb3.toString());
            dataOutputStream.writeBytes(str3);
            dataOutputStream.writeBytes(strM6859c2 + str3);
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
            dataOutputStream.writeBytes(C0953u.m7001z().m7010I() + str3);
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

    /* JADX INFO: renamed from: g */
    public static C0930q m6906g() {
        if (f5911g == null) {
            synchronized (C0930q.class) {
                if (f5911g == null) {
                    f5911g = new C0930q();
                }
            }
        }
        return f5911g;
    }

    /* JADX INFO: renamed from: i */
    private boolean m6907i(Throwable th) {
        if (th == null) {
            return false;
        }
        C0982s.m7376f("CrashHandler", "==========handleException============" + C0982s.f6144b);
        new a().start();
        if ("b6850129e15450669e97b9251a5692f1".equals(C0953u.m7001z().m7010I())) {
            return true;
        }
        m6908o(th);
        C0982s.m7374d("CrashHandler", "==========handleException=======close=====" + C0982s.f6144b);
        m6909p(this.f5915d.getAbsolutePath());
        return true;
    }

    /* JADX INFO: renamed from: o */
    private void m6908o(Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append("Name: 37.AutoKit\nTIME: 2025.03.19.1126\nApp:  " + C0925p.f5864a + "\nVER:  10208\nBox:  " + C0925p.f5865b + "\n");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        printWriter.close();
        sb.append(stringWriter.toString());
        C0982s.m7375e(sb.toString());
        C0977n.m7322y(sb.toString().getBytes(), this.f5915d.getAbsolutePath());
    }

    /* JADX INFO: renamed from: p */
    private void m6909p(String str) {
        File fileM7312o = C0977n.m7312o(this.f5914c);
        if (fileM7312o != null) {
            str = C0977n.m7306i(fileM7312o.getAbsolutePath());
            if (str == null) {
                return;
            }
        } else if (str == null || BuildConfig.FLAVOR.equals(str)) {
            return;
        }
        this.f5916e = str;
        Thread thread = new Thread(new b(str), "uploadCrashLog");
        this.f5912a = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q */
    public void m6910q(String str) {
        int i;
        C0982s.m7374d("CrashHandler", "日志上传完成: " + str);
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
            C0982s.m7375e(Log.getStackTraceString(e));
            i = -1;
        }
        if (i == 0) {
            C0977n.m7303f(this.f5916e);
        }
    }

    /* JADX INFO: renamed from: a */
    public void m6911a(Context context) {
        try {
            m6918n();
            ((ActivityManager) context.getSystemService("activity")).killBackgroundProcesses(context.getPackageName());
            System.exit(0);
        } catch (Exception unused) {
            Process.killProcess(Process.myPid());
            System.exit(1);
        }
    }

    /* JADX INFO: renamed from: e */
    public void m6912e(Activity activity) {
        if (f5910f == null) {
            f5910f = new Stack<>();
        }
        f5910f.add(activity);
    }

    /* JADX INFO: renamed from: h */
    public MainActivity m6913h() {
        if (f5910f == null) {
            return null;
        }
        for (int i = 0; i < f5910f.size(); i++) {
            if (f5910f.get(i) != null) {
                Activity activity = f5910f.get(i);
                if (activity instanceof MainActivity) {
                    return (MainActivity) activity;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: j */
    public void m6914j(Context context) {
        this.f5914c = context;
        this.f5913b = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f5915d = new File(C0977n.m7311n(context), "CrashLog.log");
    }

    /* JADX INFO: renamed from: k */
    public boolean m6915k() {
        if (f5910f != null) {
            for (int i = 0; i < f5910f.size(); i++) {
                if (f5910f.get(i) != null && (f5910f.get(i) instanceof MainActivity)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: l */
    public void m6916l(Activity activity) {
        m6917m(activity, true);
    }

    /* JADX INFO: renamed from: m */
    public void m6917m(Activity activity, boolean z) {
        if (activity != null) {
            try {
                f5910f.remove(activity);
                if (z) {
                    activity.finish();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public void m6918n() {
        C0982s.m7374d("CrashHandler", "activityStack.size() = " + f5910f.size());
        for (int i = 0; i < f5910f.size(); i++) {
            if (f5910f.get(i) != null) {
                f5910f.get(i).finish();
            }
        }
        f5910f.clear();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (!m6907i(th)) {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f5913b;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
                return;
            }
            return;
        }
        try {
            this.f5912a.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        this.f5912a = null;
        try {
            Thread.sleep(3000L);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        m6911a(this.f5914c);
    }
}
