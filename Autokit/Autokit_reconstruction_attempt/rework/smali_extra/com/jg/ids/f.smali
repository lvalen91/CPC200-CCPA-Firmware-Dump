.class public abstract Lcom/jg/ids/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/i;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    const-string v0, ""

    sput-object v0, Lcom/jg/ids/f;->b:Ljava/lang/String;

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/jg/ids/f;->c:Ljava/lang/String;

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/jg/ids/f;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jg/ids/f;->a:Landroid/content/Context;

    .line 19
    iput-object p1, p0, Lcom/jg/ids/f;->a:Landroid/content/Context;

    .line 21
    :try_start_8
    invoke-static {}, Lcom/jg/ids/k;->a()Lcom/jg/ids/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jg/ids/k;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jg/ids/f;->b:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/jg/ids/k;->a()Lcom/jg/ids/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jg/ids/k;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jg/ids/f;->c:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/jg/ids/k;->a()Lcom/jg/ids/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jg/ids/k;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jg/ids/f;->d:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_26} :catch_27

    .line 27
    :goto_26
    return-void

    :catch_27
    move-exception v0

    goto :goto_26
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    sget-object v0, Lcom/jg/ids/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    :try_start_0
    sput-object p1, Lcom/jg/ids/f;->b:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/jg/ids/k;->a()Lcom/jg/ids/k;

    move-result-object v0

    sget-object v1, Lcom/jg/ids/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jg/ids/k;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 36
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    sget-object v0, Lcom/jg/ids/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 40
    :try_start_0
    sput-object p1, Lcom/jg/ids/f;->c:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/jg/ids/k;->a()Lcom/jg/ids/k;

    move-result-object v0

    sget-object v1, Lcom/jg/ids/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jg/ids/k;->b(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 45
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    sget-object v0, Lcom/jg/ids/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 49
    :try_start_0
    sput-object p1, Lcom/jg/ids/f;->d:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/jg/ids/k;->a()Lcom/jg/ids/k;

    move-result-object v0

    sget-object v1, Lcom/jg/ids/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jg/ids/k;->c(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 54
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 78
    sget-object v0, Lcom/jg/ids/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/jg/ids/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/jg/ids/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 79
    :cond_18
    const/4 v0, 0x1

    .line 81
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method
