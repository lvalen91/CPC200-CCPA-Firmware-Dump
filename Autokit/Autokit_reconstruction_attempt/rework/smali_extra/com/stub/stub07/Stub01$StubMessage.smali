.class Lcom/stub/stub07/Stub01$StubMessage;
.super Ljava/lang/Object;
.source "Stub01.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stub/stub07/Stub01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StubMessage"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stub/stub07/Stub01$1;)V
    .registers 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/stub/stub07/Stub01$StubMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 125
    :try_start_0
    # getter for: Lcom/stub/stub07/Stub01;->JG_REPORT_REASON_CONN_CHANGE:Ljava/lang/String;
    invoke-static {}, Lcom/stub/stub07/Stub01;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stub/stub07/Stub01;->mark1(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 128
    :goto_7
    return-void

    .line 126
    :catch_8
    move-exception v0

    goto :goto_7
.end method
