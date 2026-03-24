.class final Lcom/hewei/phonemirror/touch/HWTouch$1;
.super Ljava/lang/Object;
.source "HWTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hewei/phonemirror/touch/HWTouch;->recvTouch(Ljava/net/Socket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/hewei/phonemirror/touch/HWTouch$1;->val$socket:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/hewei/phonemirror/touch/HWTouch$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_2a
    .catchall {:try_start_0 .. :try_end_10} :catchall_85

    .line 158
    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 159
    if-nez v1, :cond_41

    .line 160
    const-string v0, "line == null"

    # invokes: Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->access$000(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_21
    .catchall {:try_start_10 .. :try_end_1b} :catchall_85

    .line 183
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v0, p0, Lcom/hewei/phonemirror/touch/HWTouch$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_8c

    .line 188
    :goto_20
    return-void

    .line 163
    :catch_21
    move-exception v0

    .line 164
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->access$000(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2a
    .catchall {:try_start_22 .. :try_end_29} :catchall_85

    goto :goto_1b

    .line 179
    :catch_2a
    move-exception v0

    .line 180
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->access$000(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_85

    .line 183
    :try_start_32
    iget-object v0, p0, Lcom/hewei/phonemirror/touch/HWTouch$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_20

    .line 184
    :catch_38
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->access$000(Ljava/lang/String;)V

    goto :goto_20

    .line 168
    :cond_41
    :try_start_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/hewei/phonemirror/touch/HWTouch;->access$000(Ljava/lang/String;)V

    .line 170
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 171
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 174
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_1b

    .line 177
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    # invokes: Lcom/hewei/phonemirror/touch/HWTouch;->sendAction(IFF)V
    invoke-static {v2, v3, v1}, Lcom/hewei/phonemirror/touch/HWTouch;->access$100(IFF)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_84} :catch_2a
    .catchall {:try_start_41 .. :try_end_84} :catchall_85

    goto :goto_10

    .line 182
    :catchall_85
    move-exception v0

    .line 183
    :try_start_86
    iget-object v1, p0, Lcom/hewei/phonemirror/touch/HWTouch$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8b} :catch_95

    .line 186
    :goto_8b
    throw v0

    .line 184
    :catch_8c
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hewei/phonemirror/touch/HWTouch;->access$000(Ljava/lang/String;)V

    goto :goto_20

    .line 184
    :catch_95
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/hewei/phonemirror/touch/HWTouch;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/hewei/phonemirror/touch/HWTouch;->access$000(Ljava/lang/String;)V

    goto :goto_8b
.end method
