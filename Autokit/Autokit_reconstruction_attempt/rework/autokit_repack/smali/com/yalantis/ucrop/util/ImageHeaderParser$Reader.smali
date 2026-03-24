.class interface abstract Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/util/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Reader"
.end annotation


# virtual methods
.method public abstract getUInt16()I
.end method

.method public abstract getUInt8()S
.end method

.method public abstract read([BI)I
.end method

.method public abstract skip(J)J
.end method
