.class Lokhttp3/EventListener$2;
.super Ljava/lang/Object;
.implements Lokhttp3/EventListener$Factory;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/EventListener;->factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$listener:Lokhttp3/EventListener;

.method constructor <init>(Lokhttp3/EventListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/EventListener$2;->val$listener:Lokhttp3/EventListener;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
  .registers 2
  .line 1
    iget-object p1, p0, Lokhttp3/EventListener$2;->val$listener:Lokhttp3/EventListener;
    return-object p1
.end method
