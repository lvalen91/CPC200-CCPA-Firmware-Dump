.class public Lcom/hewei/phonemirror/touch/HWTouch;
.super Ljava/lang/Object;
.source "HWTouch.java"


# static fields
.field private static final IP:Ljava/lang/String; = "127.0.0.1"

.field private static final PORT:I = 0x22ae

.field private static final SCREEN_OFF:I = 0x2

.field private static final SCREEN_ON:I = 0x1

.field private static final SCREEN_UNKNOWN:I = 0x0

.field private static final SOURCE_CLASS_BUTTON:I = 0x1

.field private static final SOURCE_CLASS_POINTER:I = 0x2

.field private static final SOURCE_KEYBOARD:I = 0x101

.field private static final SOURCE_TOUCHSCREEN:I = 0x1002

.field private static final TOUCH_BACK:I = 0x5

.field private static final TOUCH_DOWN:I = 0x0

.field private static final TOUCH_EXIT:I = 0x64

.field private static final TOUCH_HOME:I = 0x4

.field private static final TOUCH_MENU:I = 0x3

.field private static final TOUCH_MOVE:I = 0x1

.field private static final TOUCH_UP:I = 0x2

.field private static bDebug:Z

.field private static bDebugToFile:Z

.field private static downTime:J

.field private static im:Landroid/hardware/input/InputManager;

.field private static injectInputEventMethod:Ljava/lang/reflect/Method;

.field private static mHeight:I

.field private static mTouchThread:Ljava/lang/Thread;

.field private static mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sput-boolean v1, Lcom/hewei/phonemirror/touch/HWTouch;->bDebug:Z

    .line 38
    sput-boolean v1, Lcom/hewei/phonemirror/touch/HWTouch;->bDebugToFile:Z

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->mTouchThread:Ljava/lang/Thread;

    .line 64
    sput v1, Lcom/hewei/phonemirror/touch/HWTouch;->mWidth:I

    .line 65
    sput v1, Lcom/hewei/phonemirror/touch/HWTouch;->mHeight:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WriteTxtFile([BLjava/lang/String;)V
    .registers 6

    .prologue
    .line 433
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 437
    :cond_e
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 439
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 440
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 444
    :goto_22
    return-void

    .line 441
    :catch_23
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(IFF)V
    .registers 3

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/hewei/phonemirror/touch/HWTouch;->sendAction(IFF)V

    return-void
.end method

.method private static back()V
    .registers 5

    .prologue
    .line 239
    :try_start_0
    sget-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->im:Landroid/hardware/input/InputManager;

    sget-object v1, Lcom/hewei/phonemirror/touch/HWTouch;->injectInputEventMethod:Ljava/lang/reflect/Method;

    const/16 v2, 0x101

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hewei/phonemirror/touch/HWTouch;->sendKeyEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IIZ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 243
    :goto_b
    return-void

    .line 240
    :catch_c
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 386
    :try_start_1
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 387
    const/4 v1, 0x0

    aget-object v1, v3, v1

    .line 388
    array-length v4, v3

    move v2, v0

    :goto_f
    if-ge v2, v4, :cond_20

    aget-object v0, v3, v2

    .line 389
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "debug"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b3

    move-object v1, v0

    .line 394
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    .line 397
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 399
    const-string v4, ""

    .line 400
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 401
    if-gtz v4, :cond_b8

    .line 407
    :goto_3a
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "[yyyy-MM-dd HH:mm:ss:SSS]"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 408
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    sget-boolean v1, Lcom/hewei/phonemirror/touch/HWTouch;->bDebug:Z

    if-eqz v1, :cond_92

    .line 413
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    :cond_92
    sget-boolean v1, Lcom/hewei/phonemirror/touch/HWTouch;->bDebugToFile:Z

    if-eqz v1, :cond_b2

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "/data/local/tmp/hwtouch.txt"

    invoke-static {v0, v1}, Lcom/hewei/phonemirror/touch/HWTouch;->WriteTxtFile([BLjava/lang/String;)V

    .line 429
    :cond_b2
    :goto_b2
    return-void

    .line 388
    :cond_b3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_f

    .line 404
    :cond_b8
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bd} :catch_c0

    move-result-object v0

    goto/16 :goto_3a

    .line 419
    :catch_c0
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    sget-boolean v0, Lcom/hewei/phonemirror/touch/HWTouch;->bDebug:Z

    if-eqz v0, :cond_cd

    .line 422
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    :cond_cd
    sget-boolean v0, Lcom/hewei/phonemirror/touch/HWTouch;->bDebugToFile:Z

    if-eqz v0, :cond_b2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "/data/local/tmp/hwtouch.txt"

    invoke-static {v0, v1}, Lcom/hewei/phonemirror/touch/HWTouch;->WriteTxtFile([BLjava/lang/String;)V

    goto :goto_b2
.end method

.method public static getResolution()Landroid/graphics/Point;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 298
    :try_start_1
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 299
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 302
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_39

    .line 303
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "window"

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 304
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    :goto_37
    move-object v0, v1

    .line 316
    :goto_38
    return-object v0

    .line 305
    :cond_39
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_8a

    .line 306
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "display"

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    .line 307
    const-class v0, Landroid/view/DisplayInfo;

    const-string v4, "logicalWidth"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 308
    const-class v0, Landroid/view/DisplayInfo;

    const-string v4, "logicalHeight"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7f} :catch_80

    goto :goto_37

    .line 314
    :catch_80
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    move-object v0, v2

    .line 316
    goto :goto_38

    .line 310
    :cond_8a
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_8c
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "window"

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 311
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getRealDisplaySize(Landroid/graphics/Point;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a0} :catch_80

    goto :goto_37
.end method

.method private static getRotation()I
    .registers 5

    .prologue
    .line 324
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_5f

    move-result-object v1

    .line 326
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_16
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "window"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I
    :try_end_2a
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_2a} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_5f

    move-result v0

    .line 336
    :goto_2b
    return v0

    .line 328
    :catch_2c
    move-exception v0

    .line 329
    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "display"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 331
    const-class v1, Landroid/view/DisplayInfo;

    const-string v2, "rotation"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5d} :catch_5f

    move-result v0

    goto :goto_2b

    .line 334
    :catch_5f
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 336
    const/4 v0, -0x1

    goto :goto_2b
.end method

.method private static getScreenState()I
    .registers 12

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 345
    :try_start_3
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 347
    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 349
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "power"

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 351
    const-string v0, "android.os.IPowerManager$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 353
    const-string v4, "asInterface"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 355
    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 357
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 358
    array-length v8, v7

    move v4, v3

    move v0, v3

    :goto_4e
    if-ge v4, v8, :cond_fb

    aget-object v9, v7, v4

    .line 360
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "isScreenOn"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_84

    .line 361
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v9, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoked?: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ec

    move v0, v1

    .line 365
    :cond_84
    :goto_84
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "isInteractive"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b6

    .line 366
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v9, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 367
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoked?: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ee

    move v0, v1

    .line 370
    :cond_b6
    :goto_b6
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "isActualScreenOn"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e8

    .line 371
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v9, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 372
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invoked?: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e4} :catch_f2

    move-result v0

    if-eqz v0, :cond_f0

    move v0, v1

    .line 358
    :cond_e8
    :goto_e8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4e

    :cond_ec
    move v0, v2

    .line 363
    goto :goto_84

    :cond_ee
    move v0, v2

    .line 368
    goto :goto_b6

    :cond_f0
    move v0, v2

    .line 373
    goto :goto_e8

    .line 376
    :catch_f2
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    move v0, v3

    .line 380
    :cond_fb
    return v0
.end method

.method private static init()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    :try_start_2
    const-class v0, Landroid/hardware/input/InputManager;

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    sput-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->im:Landroid/hardware/input/InputManager;

    .line 126
    const-class v0, Landroid/view/MotionEvent;

    const-string v3, "obtain"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    const-class v0, Landroid/hardware/input/InputManager;

    const-string v3, "injectInputEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/InputEvent;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->injectInputEventMethod:Ljava/lang/reflect/Method;

    .line 129
    invoke-static {}, Lcom/hewei/phonemirror/touch/HWTouch;->getResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 130
    if-nez v0, :cond_4c

    .line 131
    const-string v0, "Failed to get resolution."

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    move v0, v1

    .line 143
    :goto_4b
    return v0

    .line 135
    :cond_4c
    iget v3, v0, Landroid/graphics/Point;->x:I

    sput v3, Lcom/hewei/phonemirror/touch/HWTouch;->mWidth:I

    .line 136
    iget v0, v0, Landroid/graphics/Point;->y:I

    sput v0, Lcom/hewei/phonemirror/touch/HWTouch;->mHeight:I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolution: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/hewei/phonemirror/touch/HWTouch;->mWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/hewei/phonemirror/touch/HWTouch;->mHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_78} :catch_7a

    move v0, v2

    .line 140
    goto :goto_4b

    .line 141
    :catch_7a
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    move v0, v1

    .line 143
    goto :goto_4b
.end method

.method private static injectKeyEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;Landroid/view/KeyEvent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 285
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method private static injectMotionEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IIJJFFF)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 279
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move/from16 v6, p3

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 280
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 281
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 69
    array-length v0, p0

    if-ne v0, v2, :cond_f

    .line 70
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2e

    .line 71
    sput-boolean v2, Lcom/hewei/phonemirror/touch/HWTouch;->bDebug:Z

    .line 80
    :cond_f
    :goto_f
    const-string v0, "start!"

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 84
    :try_start_14
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v0, 0x22ae

    const/4 v2, 0x1

    const-string v3, "127.0.0.1"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_47

    .line 90
    invoke-static {}, Lcom/hewei/phonemirror/touch/HWTouch;->init()Z

    move-result v0

    if-nez v0, :cond_50

    .line 91
    const-string v0, "init failed."

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 121
    :cond_2d
    :goto_2d
    return-void

    .line 72
    :cond_2e
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_39

    .line 73
    sput-boolean v2, Lcom/hewei/phonemirror/touch/HWTouch;->bDebugToFile:Z

    goto :goto_f

    .line 74
    :cond_39
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 75
    sput-boolean v2, Lcom/hewei/phonemirror/touch/HWTouch;->bDebugToFile:Z

    .line 76
    sput-boolean v2, Lcom/hewei/phonemirror/touch/HWTouch;->bDebug:Z

    goto :goto_f

    .line 85
    :catch_47
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    goto :goto_2d

    .line 95
    :cond_50
    const-string v0, "listen....."

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 97
    :try_start_55
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->recvTouch(Ljava/net/Socket;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5c} :catch_7e

    .line 103
    :goto_5c
    sget-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->mTouchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6a

    .line 104
    sget-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->mTouchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    :try_start_65
    sget-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->mTouchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_6a} :catch_87

    .line 112
    :cond_6a
    :goto_6a
    const-string v0, "The main thread exits."

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 114
    if-eqz v1, :cond_2d

    .line 115
    :try_start_71
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_2d

    .line 118
    :catch_75
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    goto :goto_2d

    .line 99
    :catch_7e
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    goto :goto_5c

    .line 107
    :catch_87
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    goto :goto_6a
.end method

.method private static menu()V
    .registers 5

    .prologue
    .line 231
    :try_start_0
    sget-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->im:Landroid/hardware/input/InputManager;

    sget-object v1, Lcom/hewei/phonemirror/touch/HWTouch;->injectInputEventMethod:Ljava/lang/reflect/Method;

    const/16 v2, 0x101

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hewei/phonemirror/touch/HWTouch;->sendKeyEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IIZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 235
    :goto_c
    return-void

    .line 232
    :catch_d
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private static pressHome()V
    .registers 5

    .prologue
    .line 272
    :try_start_0
    sget-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->im:Landroid/hardware/input/InputManager;

    sget-object v1, Lcom/hewei/phonemirror/touch/HWTouch;->injectInputEventMethod:Ljava/lang/reflect/Method;

    const/16 v2, 0x101

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hewei/phonemirror/touch/HWTouch;->sendKeyEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IIZ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 276
    :goto_b
    return-void

    .line 273
    :catch_c
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static recvTouch(Ljava/net/Socket;)V
    .registers 3

    .prologue
    .line 149
    const-string v0, "Receive touch......"

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hewei/phonemirror/touch/HWTouch$1;

    invoke-direct {v1, p0}, Lcom/hewei/phonemirror/touch/HWTouch$1;-><init>(Ljava/net/Socket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->mTouchThread:Ljava/lang/Thread;

    .line 190
    return-void
.end method

.method private static sendAction(IFF)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    .line 194
    if-eqz p0, :cond_32

    if-eq p0, v2, :cond_32

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6b

    .line 195
    :cond_32
    invoke-static {}, Lcom/hewei/phonemirror/touch/HWTouch;->getRotation()I

    move-result v0

    .line 196
    if-eq v0, v2, :cond_3b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6f

    .line 197
    :cond_3b
    sget v0, Lcom/hewei/phonemirror/touch/HWTouch;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 198
    sget v1, Lcom/hewei/phonemirror/touch/HWTouch;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    .line 203
    :goto_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    move p2, v0

    move p1, v1

    .line 205
    :cond_6b
    packed-switch p0, :pswitch_data_92

    .line 227
    :goto_6e
    return-void

    .line 200
    :cond_6f
    sget v0, Lcom/hewei/phonemirror/touch/HWTouch;->mWidth:I

    int-to-float v0, v0

    mul-float v1, p1, v0

    .line 201
    sget v0, Lcom/hewei/phonemirror/touch/HWTouch;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    goto :goto_43

    .line 207
    :pswitch_79
    invoke-static {p1, p2}, Lcom/hewei/phonemirror/touch/HWTouch;->touchDown(FF)V

    goto :goto_6e

    .line 210
    :pswitch_7d
    invoke-static {p1, p2}, Lcom/hewei/phonemirror/touch/HWTouch;->touchMove(FF)V

    goto :goto_6e

    .line 213
    :pswitch_81
    invoke-static {p1, p2}, Lcom/hewei/phonemirror/touch/HWTouch;->touchUp(FF)V

    goto :goto_6e

    .line 216
    :pswitch_85
    invoke-static {}, Lcom/hewei/phonemirror/touch/HWTouch;->back()V

    goto :goto_6e

    .line 219
    :pswitch_89
    invoke-static {}, Lcom/hewei/phonemirror/touch/HWTouch;->menu()V

    goto :goto_6e

    .line 222
    :pswitch_8d
    invoke-static {}, Lcom/hewei/phonemirror/touch/HWTouch;->pressHome()V

    goto :goto_6e

    .line 205
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_79
        :pswitch_7d
        :pswitch_81
        :pswitch_89
        :pswitch_8d
        :pswitch_85
    .end packed-switch
.end method

.method private static sendKeyEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IIZ)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 290
    if-eqz p4, :cond_2c

    const/4 v9, 0x1

    .line 291
    :goto_7
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v4, v2

    move/from16 v7, p3

    move/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {p0, p1, v1}, Lcom/hewei/phonemirror/touch/HWTouch;->injectKeyEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;Landroid/view/KeyEvent;)V

    .line 292
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v4, v2

    move/from16 v7, p3

    move/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {p0, p1, v1}, Lcom/hewei/phonemirror/touch/HWTouch;->injectKeyEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;Landroid/view/KeyEvent;)V

    .line 293
    return-void

    .line 290
    :cond_2c
    const/4 v9, 0x0

    goto :goto_7
.end method

.method private static touchDown(FF)V
    .registers 13

    .prologue
    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hewei/phonemirror/touch/HWTouch;->downTime:J

    .line 264
    :try_start_6
    sget-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->im:Landroid/hardware/input/InputManager;

    sget-object v1, Lcom/hewei/phonemirror/touch/HWTouch;->injectInputEventMethod:Ljava/lang/reflect/Method;

    const/16 v2, 0x1002

    const/4 v3, 0x0

    sget-wide v4, Lcom/hewei/phonemirror/touch/HWTouch;->downTime:J

    sget-wide v6, Lcom/hewei/phonemirror/touch/HWTouch;->downTime:J

    const/high16 v10, 0x3f800000    # 1.0f

    move v8, p0

    move v9, p1

    invoke-static/range {v0 .. v10}, Lcom/hewei/phonemirror/touch/HWTouch;->injectMotionEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IIJJFFF)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    .line 268
    :goto_18
    return-void

    .line 265
    :catch_19
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private static touchMove(FF)V
    .registers 13

    .prologue
    .line 255
    :try_start_0
    sget-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->im:Landroid/hardware/input/InputManager;

    sget-object v1, Lcom/hewei/phonemirror/touch/HWTouch;->injectInputEventMethod:Ljava/lang/reflect/Method;

    const/16 v2, 0x1002

    const/4 v3, 0x2

    sget-wide v4, Lcom/hewei/phonemirror/touch/HWTouch;->downTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/high16 v10, 0x3f800000    # 1.0f

    move v8, p0

    move v9, p1

    invoke-static/range {v0 .. v10}, Lcom/hewei/phonemirror/touch/HWTouch;->injectMotionEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IIJJFFF)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 259
    :goto_14
    return-void

    .line 256
    :catch_15
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private static touchUp(FF)V
    .registers 13

    .prologue
    .line 247
    :try_start_0
    sget-object v0, Lcom/hewei/phonemirror/touch/HWTouch;->im:Landroid/hardware/input/InputManager;

    sget-object v1, Lcom/hewei/phonemirror/touch/HWTouch;->injectInputEventMethod:Ljava/lang/reflect/Method;

    const/16 v2, 0x1002

    const/4 v3, 0x1

    sget-wide v4, Lcom/hewei/phonemirror/touch/HWTouch;->downTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/high16 v10, 0x3f800000    # 1.0f

    move v8, p0

    move v9, p1

    invoke-static/range {v0 .. v10}, Lcom/hewei/phonemirror/touch/HWTouch;->injectMotionEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IIJJFFF)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 251
    :goto_14
    return-void

    .line 248
    :catch_15
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V

    goto :goto_14
.end method
