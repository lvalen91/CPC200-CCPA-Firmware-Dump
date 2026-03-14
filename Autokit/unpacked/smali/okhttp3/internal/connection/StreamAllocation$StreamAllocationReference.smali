.class public final Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/connection/StreamAllocation;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "StreamAllocationReference"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/ref/WeakReference<",
    "Lokhttp3/internal/connection/StreamAllocation;",
    ">;"
  }
.end annotation

.field public final callStackTrace:Ljava/lang/Object;

.method constructor <init>(Lokhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
  .line 2
    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;
    return-void
.end method
