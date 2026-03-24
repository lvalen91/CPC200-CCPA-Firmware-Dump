.class Lcom/tencent/mars/xlog/Log$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mars/xlog/Log$1;->logF(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/mars/xlog/Log$1;

.field final synthetic val$log:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mars/xlog/Log$1;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tencent/mars/xlog/Log$1$1;->this$0:Lcom/tencent/mars/xlog/Log$1;

    iput-object p2, p0, Lcom/tencent/mars/xlog/Log$1$1;->val$log:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->toastSupportContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mars/xlog/Log$1$1;->val$log:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
