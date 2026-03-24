.class final Lc/m/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/m/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/RandomAccessFile;Lc/m/c$a;)J
    .registers 11

    .line 1
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 2
    iget-wide v1, p1, Lc/m/c$a;->b:J

    .line 3
    iget-wide v3, p1, Lc/m/c$a;->a:J

    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v3, 0x4000

    .line 4
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int p1, v5

    const/16 v5, 0x4000

    new-array v5, v5, [B

    const/4 v6, 0x0

    .line 5
    invoke-virtual {p0, v5, v6, p1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    :goto_1c
    const/4 v7, -0x1

    if-eq p1, v7, :cond_35

    .line 6
    invoke-virtual {v0, v5, v6, p1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v7, p1

    sub-long/2addr v1, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v1, v7

    if-nez p1, :cond_2b

    goto :goto_35

    .line 7
    :cond_2b
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int p1, v7

    .line 8
    invoke-virtual {p0, v5, v6, p1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    goto :goto_1c

    .line 9
    :cond_35
    :goto_35
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p0

    return-wide p0
.end method

.method static b(Ljava/io/RandomAccessFile;)Lc/m/c$a;
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_68

    const-wide/32 v4, 0x10000

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_17

    goto :goto_18

    :cond_17
    move-wide v2, v4

    :goto_18
    const v4, 0x6054b50

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 3
    :goto_1f
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_58

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 6
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 8
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 9
    new-instance v0, Lc/m/c$a;

    invoke-direct {v0}, Lc/m/c$a;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, v0, Lc/m/c$a;->b:J

    .line 11
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    int-to-long v1, p0

    and-long/2addr v1, v3

    iput-wide v1, v0, Lc/m/c$a;->a:J

    return-object v0

    :cond_58
    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-ltz v5, :cond_60

    goto :goto_1f

    .line 12
    :cond_60
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "End Of Central Directory signature not found"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_68
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File too short to be a zip file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_84

    :goto_83
    throw v0

    :goto_84
    goto :goto_83
.end method

.method static c(Ljava/io/File;)J
    .registers 4

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    :try_start_7
    invoke-static {v0}, Lc/m/c;->b(Ljava/io/RandomAccessFile;)Lc/m/c$a;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lc/m/c;->a(Ljava/io/RandomAccessFile;Lc/m/c$a;)J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v1

    :catchall_13
    move-exception p0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw p0
.end method
