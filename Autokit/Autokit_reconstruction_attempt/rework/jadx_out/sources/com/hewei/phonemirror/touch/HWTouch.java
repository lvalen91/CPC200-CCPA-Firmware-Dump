package com.hewei.phonemirror.touch;

import android.graphics.Point;
import android.hardware.display.IDisplayManager;
import android.hardware.input.InputManager;
import android.os.Build;
import android.os.IBinder;
import android.os.SystemClock;
import android.view.DisplayInfo;
import android.view.IWindowManager;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: assets/HWTouch.dex */
public class HWTouch {
    private static final String IP = "127.0.0.1";
    private static final int PORT = 8878;
    private static final int SCREEN_OFF = 2;
    private static final int SCREEN_ON = 1;
    private static final int SCREEN_UNKNOWN = 0;
    private static final int SOURCE_CLASS_BUTTON = 1;
    private static final int SOURCE_CLASS_POINTER = 2;
    private static final int SOURCE_KEYBOARD = 257;
    private static final int SOURCE_TOUCHSCREEN = 4098;
    private static final int TOUCH_BACK = 5;
    private static final int TOUCH_DOWN = 0;
    private static final int TOUCH_EXIT = 100;
    private static final int TOUCH_HOME = 4;
    private static final int TOUCH_MENU = 3;
    private static final int TOUCH_MOVE = 1;
    private static final int TOUCH_UP = 2;
    private static long downTime;
    private static InputManager im;
    private static Method injectInputEventMethod;
    private static boolean bDebug = false;
    private static boolean bDebugToFile = false;
    private static Thread mTouchThread = null;
    private static int mWidth = 0;
    private static int mHeight = 0;

    public static void main(String[] strArr) {
        if (strArr.length == 1) {
            if (Integer.parseInt(strArr[0]) == 0) {
                bDebug = true;
            } else if (Integer.parseInt(strArr[0]) == 1) {
                bDebugToFile = true;
            } else if (Integer.parseInt(strArr[0]) == 2) {
                bDebugToFile = true;
                bDebug = true;
            }
        }
        debug("start!");
        try {
            ServerSocket serverSocket = new ServerSocket(PORT, 1, InetAddress.getByName(IP));
            if (!init()) {
                debug("init failed.");
                return;
            }
            debug("listen.....");
            try {
                recvTouch(serverSocket.accept());
            } catch (Exception e) {
                debug(e.getMessage());
            }
            if (mTouchThread != null) {
                mTouchThread.start();
                try {
                    mTouchThread.join();
                } catch (InterruptedException e2) {
                    debug(e2.getMessage());
                }
            }
            debug("The main thread exits.");
            if (serverSocket != null) {
                try {
                    serverSocket.close();
                } catch (Exception e3) {
                    debug(e3.getMessage());
                }
            }
        } catch (Exception e4) {
            debug(e4.getMessage());
        }
    }

    private static boolean init() {
        boolean z;
        try {
            im = (InputManager) InputManager.class.getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
            MotionEvent.class.getDeclaredMethod("obtain", new Class[0]).setAccessible(true);
            injectInputEventMethod = InputManager.class.getMethod("injectInputEvent", InputEvent.class, Integer.TYPE);
            Point resolution = getResolution();
            if (resolution == null) {
                debug("Failed to get resolution.");
                z = false;
            } else {
                mWidth = resolution.x;
                mHeight = resolution.y;
                debug("Resolution: " + mWidth + "x" + mHeight);
                z = true;
            }
            return z;
        } catch (Exception e) {
            debug(e.getMessage());
            return false;
        }
    }

    private static void recvTouch(final Socket socket) {
        debug("Receive touch......");
        mTouchThread = new Thread(new Runnable() { // from class: com.hewei.phonemirror.touch.HWTouch.1
            /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
            
                com.hewei.phonemirror.touch.HWTouch.debug("line == null");
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                try {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                HWTouch.debug("" + line);
                                String[] strArrSplit = line.split("_");
                                if (strArrSplit.length == HWTouch.TOUCH_MENU) {
                                    if (Integer.parseInt(strArrSplit[0]) != HWTouch.TOUCH_EXIT) {
                                        HWTouch.sendAction(Integer.parseInt(strArrSplit[0]), Float.parseFloat(strArrSplit[1]), Float.parseFloat(strArrSplit[2]));
                                    }
                                }
                            } catch (Exception e) {
                                HWTouch.debug(e.getMessage());
                            }
                        }
                    } catch (Exception e2) {
                        HWTouch.debug(e2.getMessage());
                        try {
                            socket.close();
                        } catch (Exception e3) {
                            HWTouch.debug(e3.getMessage());
                        }
                    }
                } finally {
                    try {
                        socket.close();
                    } catch (Exception e4) {
                        HWTouch.debug(e4.getMessage());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendAction(int i, float f, float f2) {
        float f3;
        float f4;
        debug("Action: " + i + " " + f + " " + f2);
        if (i == 0 || i == 1 || i == 2) {
            int rotation = getRotation();
            if (rotation == 1 || rotation == TOUCH_MENU) {
                f3 = mWidth * f2;
                f4 = mHeight * f;
            } else {
                f4 = f * mWidth;
                f3 = mHeight * f2;
            }
            debug("(" + f4 + "," + f3 + ")");
            f2 = f3;
            f = f4;
        }
        switch (i) {
            case 0:
                touchDown(f, f2);
                break;
            case 1:
                touchMove(f, f2);
                break;
            case 2:
                touchUp(f, f2);
                break;
            case TOUCH_MENU /* 3 */:
                menu();
                break;
            case TOUCH_HOME /* 4 */:
                pressHome();
                break;
            case TOUCH_BACK /* 5 */:
                back();
                break;
        }
    }

    private static void menu() {
        try {
            sendKeyEvent(im, injectInputEventMethod, SOURCE_KEYBOARD, 82, false);
        } catch (Exception e) {
            debug(e.getMessage());
        }
    }

    private static void back() {
        try {
            sendKeyEvent(im, injectInputEventMethod, SOURCE_KEYBOARD, TOUCH_HOME, false);
        } catch (Exception e) {
            debug(e.getMessage());
        }
    }

    private static void touchUp(float f, float f2) {
        try {
            injectMotionEvent(im, injectInputEventMethod, SOURCE_TOUCHSCREEN, 1, downTime, SystemClock.uptimeMillis(), f, f2, 1.0f);
        } catch (Exception e) {
            debug(e.getMessage());
        }
    }

    private static void touchMove(float f, float f2) {
        try {
            injectMotionEvent(im, injectInputEventMethod, SOURCE_TOUCHSCREEN, 2, downTime, SystemClock.uptimeMillis(), f, f2, 1.0f);
        } catch (Exception e) {
            debug(e.getMessage());
        }
    }

    private static void touchDown(float f, float f2) {
        downTime = SystemClock.uptimeMillis();
        try {
            injectMotionEvent(im, injectInputEventMethod, SOURCE_TOUCHSCREEN, 0, downTime, downTime, f, f2, 1.0f);
        } catch (Exception e) {
            debug(e.getMessage());
        }
    }

    private static void pressHome() {
        try {
            sendKeyEvent(im, injectInputEventMethod, SOURCE_KEYBOARD, TOUCH_MENU, false);
        } catch (Exception e) {
            debug(e.getMessage());
        }
    }

    private static void injectMotionEvent(InputManager inputManager, Method method, int i, int i2, long j, long j2, float f, float f2, float f3) throws IllegalAccessException, InvocationTargetException {
        MotionEvent motionEventObtain = MotionEvent.obtain(j, j2, i2, f, f2, f3, 1.0f, 0, 1.0f, 1.0f, 0, 0);
        motionEventObtain.setSource(i);
        method.invoke(inputManager, motionEventObtain, 0);
    }

    private static void injectKeyEvent(InputManager inputManager, Method method, KeyEvent keyEvent) throws IllegalAccessException, InvocationTargetException {
        method.invoke(inputManager, keyEvent, 0);
    }

    private static void sendKeyEvent(InputManager inputManager, Method method, int i, int i2, boolean z) throws IllegalAccessException, InvocationTargetException {
        long jUptimeMillis = SystemClock.uptimeMillis();
        int i3 = z ? 1 : 0;
        injectKeyEvent(inputManager, method, new KeyEvent(jUptimeMillis, jUptimeMillis, 0, i2, 0, i3, -1, 0, 0, i));
        injectKeyEvent(inputManager, method, new KeyEvent(jUptimeMillis, jUptimeMillis, 1, i2, 0, i3, -1, 0, 0, i));
    }

    public static Point getResolution() {
        try {
            Method declaredMethod = Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", String.class);
            Point point = new Point();
            if (Build.VERSION.SDK_INT >= 18) {
                IWindowManager.Stub.asInterface((IBinder) declaredMethod.invoke(null, "window")).getBaseDisplaySize(0, point);
            } else if (Build.VERSION.SDK_INT == 17) {
                DisplayInfo displayInfo = IDisplayManager.Stub.asInterface((IBinder) declaredMethod.invoke(null, "display")).getDisplayInfo(0);
                point.x = ((Integer) DisplayInfo.class.getDeclaredField("logicalWidth").get(displayInfo)).intValue();
                point.y = ((Integer) DisplayInfo.class.getDeclaredField("logicalHeight").get(displayInfo)).intValue();
            } else {
                IWindowManager.Stub.asInterface((IBinder) declaredMethod.invoke(null, "window")).getRealDisplaySize(point);
            }
            return point;
        } catch (Exception e) {
            debug(e.getMessage());
            return null;
        }
    }

    private static int getRotation() {
        int iIntValue;
        try {
            Method declaredMethod = Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", String.class);
            try {
                iIntValue = IWindowManager.Stub.asInterface((IBinder) declaredMethod.invoke(null, "window")).getRotation();
            } catch (Error e) {
                debug(e.getMessage());
                iIntValue = ((Integer) DisplayInfo.class.getDeclaredField("rotation").get(IDisplayManager.Stub.asInterface((IBinder) declaredMethod.invoke(null, "display")).getDisplayInfo(0))).intValue();
            }
            return iIntValue;
        } catch (Exception e2) {
            debug(e2.getMessage());
            return -1;
        }
    }

    private static int getScreenState() {
        try {
            Object objInvoke = Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "power");
            Object objInvoke2 = Class.forName("android.os.IPowerManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, objInvoke);
            int i = 0;
            for (Method method : objInvoke2.getClass().getDeclaredMethods()) {
                if (method.getName().equalsIgnoreCase("isScreenOn")) {
                    Boolean bool = (Boolean) method.invoke(objInvoke, new Object[0]);
                    debug("invoked?: " + bool);
                    i = bool.booleanValue() ? 1 : 2;
                }
                if (method.getName().equalsIgnoreCase("isInteractive")) {
                    Boolean bool2 = (Boolean) method.invoke(objInvoke2, new Object[0]);
                    debug("invoked?: " + bool2);
                    i = bool2.booleanValue() ? 1 : 2;
                }
                if (method.getName().equalsIgnoreCase("isActualScreenOn")) {
                    Boolean bool3 = (Boolean) method.invoke(objInvoke2, new Object[0]);
                    debug("invoked?: " + bool3);
                    i = bool3.booleanValue() ? 1 : 2;
                }
            }
            return i;
        } catch (Exception e) {
            debug(e.getMessage());
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void debug(String str) {
        try {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            StackTraceElement stackTraceElement = stackTrace[0];
            int length = stackTrace.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                StackTraceElement stackTraceElement2 = stackTrace[i];
                if (!stackTraceElement2.getMethodName().equals("debug")) {
                    stackTraceElement = stackTraceElement2;
                    break;
                }
                i++;
            }
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            int lineNumber = stackTraceElement.getLineNumber();
            String fileName = stackTraceElement.getFileName();
            int iLastIndexOf = className.lastIndexOf(".");
            if (iLastIndexOf > 0) {
                className = className.substring(iLastIndexOf + 1);
            }
            String str2 = new SimpleDateFormat("[yyyy-MM-dd HH:mm:ss:SSS]").format(new Date()) + "[" + fileName + ":" + lineNumber + " " + className + "::" + methodName + "] " + str;
            if (bDebug) {
                System.out.println(str2);
            }
            if (bDebugToFile) {
                WriteTxtFile((str2 + "\n").getBytes(), "/data/local/tmp/hwtouch.txt");
            }
        } catch (Exception e) {
            e.printStackTrace();
            if (bDebug) {
                System.out.println(str);
            }
            if (bDebugToFile) {
                WriteTxtFile((str + "\n").getBytes(), "/data/local/tmp/hwtouch.txt");
            }
        }
    }

    private static void WriteTxtFile(byte[] bArr, String str) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.createNewFile();
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(file.length());
            randomAccessFile.write(bArr);
            randomAccessFile.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
