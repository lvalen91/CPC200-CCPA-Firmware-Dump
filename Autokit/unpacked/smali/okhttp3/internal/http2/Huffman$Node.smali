.class final Lokhttp3/internal/http2/Huffman$Node;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http2/Huffman;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "Node"
.end annotation

.field final children:[Lokhttp3/internal/http2/Huffman$Node;

.field final symbol:I

.field final terminalBits:I

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 256
    new-array v0, v0, [Lokhttp3/internal/http2/Huffman$Node;
  .line 2
    iput-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;
    const/4 v0, 0
  .line 3
    iput v0, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I
  .line 4
    iput v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I
    return-void
.end method

.method constructor <init>(II)V
  .registers 4
  .line 5
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 6
    iput-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;
  .line 7
    iput p1, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I
    and-int/lit8 p1, p2, 7
    if-nez p1, :L0
    const/16 p1, 8
  :L0
  .line 8
    iput p1, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I
    return-void
.end method
