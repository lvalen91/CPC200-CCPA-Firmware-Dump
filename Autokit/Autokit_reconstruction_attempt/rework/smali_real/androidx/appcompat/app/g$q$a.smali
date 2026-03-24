.class Landroidx/appcompat/app/g$q$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/g$q;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/g$q;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/g$q;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$q$a;->a:Landroidx/appcompat/app/g$q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/g$q$a;->a:Landroidx/appcompat/app/g$q;

    invoke-virtual {p1}, Landroidx/appcompat/app/g$q;->d()V

    return-void
.end method
