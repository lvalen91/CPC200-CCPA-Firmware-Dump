.class public Lcn/manstep/phonemirrorBox/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/util/p$g;,
        Lcn/manstep/phonemirrorBox/util/p$f;,
        Lcn/manstep/phonemirrorBox/util/p$e;
    }
.end annotation


# static fields
.field public static f:Ljava/lang/String; = ""


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Lokhttp3/Interceptor;

.field private c:Lcn/manstep/phonemirrorBox/util/p$g;

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/manstep/phonemirrorBox/util/p$e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/p;->e:Z

    .line 4
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/util/p;->g()V

    .line 5
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/p;->b:Lokhttp3/Interceptor;

    .line 6
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/p;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/p;->e:Z

    .line 13
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/util/p;->h(Ljava/util/Map;)V

    .line 14
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->b:Lokhttp3/Interceptor;

    .line 15
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/16 v0, 0x14

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/p;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/util/p;IILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/util/p;->m(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/util/p;Ljava/lang/String;Lokhttp3/ResponseBody;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/util/p;->p(Ljava/lang/String;Lokhttp3/ResponseBody;I)V

    return-void
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/util/p;)Ljava/util/LinkedList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    return-object p0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .registers 4

    const-string v0, "application/json; charset=utf-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 2
    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 3
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Request;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v3, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    const-string v7, "="

    if-le v5, v6, :cond_3f

    const-string v5, "&"

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 8
    :cond_3f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 9
    :cond_49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequest: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "HTTP"

    invoke-static {v3, p2}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    .line 12
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private g()V
    .registers 2

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/p$g;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/util/p$g;-><init>(Lcn/manstep/phonemirrorBox/util/p;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->c:Lcn/manstep/phonemirrorBox/util/p$g;

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/util/p$b;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/util/p$b;-><init>(Lcn/manstep/phonemirrorBox/util/p;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->b:Lokhttp3/Interceptor;

    return-void
.end method

.method private h(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/p$g;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/util/p$g;-><init>(Lcn/manstep/phonemirrorBox/util/p;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->c:Lcn/manstep/phonemirrorBox/util/p$g;

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/util/p$a;

    invoke-direct {v0, p0, p1}, Lcn/manstep/phonemirrorBox/util/p$a;-><init>(Lcn/manstep/phonemirrorBox/util/p;Ljava/util/Map;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->b:Lokhttp3/Interceptor;

    return-void
.end method

.method private k(I)Lokhttp3/Callback;
    .registers 3

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/p$c;

    invoke-direct {v0, p0, p1}, Lcn/manstep/phonemirrorBox/util/p$c;-><init>(Lcn/manstep/phonemirrorBox/util/p;I)V

    return-object v0
.end method

.method private l(IIJ)V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/p;->c:Lcn/manstep/phonemirrorBox/util/p$g;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private m(IILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/p;->c:Lcn/manstep/phonemirrorBox/util/p$g;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private n(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/manstep/phonemirrorBox/util/p$e;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p6, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    invoke-virtual {p6}, Ljava/util/LinkedList;->size()I

    move-result p6

    const/4 v0, 0x1

    sub-int/2addr p6, v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p5

    if-nez p5, :cond_1e

    const-string p1, "no file"

    .line 5
    invoke-direct {p0, p6, v0, p1}, Lcn/manstep/phonemirrorBox/util/p;->m(IILjava/lang/String;)V

    return-void

    .line 6
    :cond_1e
    new-instance p5, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p5}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 7
    sget-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {p5, v0}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    const-string v0, "multipart/form-data"

    .line 8
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 9
    invoke-virtual {p5, p3, p4, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_53

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 11
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    invoke-virtual {p5, p4, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_3d

    .line 13
    :cond_53
    invoke-virtual {p5}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p2

    const-string p3, "http"

    .line 14
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_71

    .line 15
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    goto :goto_93

    .line 16
    :cond_71
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "http://api.paplink.cn"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 17
    :goto_93
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/util/p;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-direct {p0, p6}, Lcn/manstep/phonemirrorBox/util/p;->k(I)Lokhttp3/Callback;

    move-result-object p2

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private p(Ljava/lang/String;Lokhttp3/ResponseBody;I)V
    .registers 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP,writeFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    .line 4
    :try_start_1f
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_8f
    .catchall {:try_start_1f .. :try_end_24} :catchall_8d

    const/16 v2, 0x400

    :try_start_26
    new-array v2, v2, [B

    .line 5
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    const/4 p2, 0x3

    .line 6
    invoke-direct {p0, p3, p2, v4, v5}, Lcn/manstep/phonemirrorBox/util/p;->l(IIJ)V

    const-wide/16 v6, 0x0

    .line 7
    :goto_32
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq p2, v8, :cond_48

    iget-boolean v8, p0, Lcn/manstep/phonemirrorBox/util/p;->e:Z

    if-nez v8, :cond_48

    .line 8
    invoke-virtual {v3, v2, v9, p2}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v8, p2

    add-long/2addr v6, v8

    const/4 p2, 0x4

    .line 9
    invoke-direct {p0, p3, p2, v6, v7}, Lcn/manstep/phonemirrorBox/util/p;->l(IIJ)V

    goto :goto_32

    .line 10
    :cond_48
    iget-boolean p2, p0, Lcn/manstep/phonemirrorBox/util/p;->e:Z

    if-eqz p2, :cond_65

    .line 11
    iput-boolean v9, p0, Lcn/manstep/phonemirrorBox/util/p;->e:Z

    const/4 p2, 0x2

    const-string v1, ""

    .line 12
    invoke-direct {p0, p3, p2, v1}, Lcn/manstep/phonemirrorBox/util/p;->m(IILjava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_54} :catch_8a
    .catchall {:try_start_26 .. :try_end_54} :catchall_87

    .line 13
    :try_start_54
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 15
    :goto_5c
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_64
    return-void

    :cond_65
    cmp-long p2, v6, v4

    if-nez p2, :cond_71

    .line 17
    :try_start_69
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/c0;->j(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, v9, p2}, Lcn/manstep/phonemirrorBox/util/p;->m(IILjava/lang/String;)V

    goto :goto_76

    :cond_71
    const-string p2, "sum != totalSize"

    .line 18
    invoke-direct {p0, p3, p1, p2}, Lcn/manstep/phonemirrorBox/util/p;->m(IILjava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_76} :catch_8a
    .catchall {:try_start_69 .. :try_end_76} :catchall_87

    .line 19
    :goto_76
    :try_start_76
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 21
    :goto_7e
    :try_start_7e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_a4

    :catch_82
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a4

    :catchall_87
    move-exception p1

    move-object v2, v3

    goto :goto_a5

    :catch_8a
    move-exception p2

    move-object v2, v3

    goto :goto_90

    :catchall_8d
    move-exception p1

    goto :goto_a5

    :catch_8f
    move-exception p2

    .line 23
    :goto_90
    :try_start_90
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lcn/manstep/phonemirrorBox/util/p;->m(IILjava/lang/String;)V
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_8d

    .line 24
    :try_start_97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_9f

    :catch_9b
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_9f
    if-eqz v2, :cond_a4

    .line 26
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_82

    :cond_a4
    :goto_a4
    return-void

    .line 27
    :goto_a5
    :try_start_a5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_ad

    :catch_a9
    move-exception p2

    .line 28
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_ad
    if-eqz v2, :cond_b7

    .line 29
    :try_start_af
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_b7

    :catch_b3
    move-exception p2

    .line 30
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    :cond_b7
    :goto_b7
    goto :goto_b9

    :goto_b8
    throw p1

    :goto_b9
    goto :goto_b8
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$f;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/manstep/phonemirrorBox/util/p$f;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p4, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.paplink.cn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/util/p;->f(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Request;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/util/p;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lcn/manstep/phonemirrorBox/util/p$d;

    invoke-direct {p2, p0, p4, p3}, Lcn/manstep/phonemirrorBox/util/p$d;-><init>(Lcn/manstep/phonemirrorBox/util/p;ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string p3, "http"

    .line 2
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1e

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://api.paplink.cn"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_1e
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/util/p;->e(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/util/p;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2}, Lcn/manstep/phonemirrorBox/util/p;->k(I)Lokhttp3/Callback;

    move-result-object p2

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/util/Map;Lcn/manstep/phonemirrorBox/util/p$e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/manstep/phonemirrorBox/util/p$e;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://api.paplink.cn"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/util/p;->f(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Request;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/util/p;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/util/p;->d:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2}, Lcn/manstep/phonemirrorBox/util/p;->k(I)Lokhttp3/Callback;

    move-result-object p2

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/manstep/phonemirrorBox/util/p$e;",
            ")V"
        }
    .end annotation

    const-string v3, "log"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcn/manstep/phonemirrorBox/util/p;->n(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V

    return-void
.end method
