.class public Lcn/manstep/phonemirrorBox/MyFileProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"

.field private b:Landroid/content/UriMatcher;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroid/content/ContentProvider;-><init>()V
    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/net/Uri;
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L0
    const-string v1, "@"
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L0
    const/16 v1, 64
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/String;->indexOf(I)I
    move-result v1
    add-int/lit8 v1, v1, 1
    invoke-virtual { v0, v1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v0
  .line 4
    invoke-virtual { p1 }, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
    move-result-object p1
    invoke-virtual { p1, v0 }, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    move-result-object p1
  :L0
    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
  .registers 4
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Not supported"
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MyFileProvider;->b:Landroid/content/UriMatcher;
    invoke-virtual { v0, p1 }, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
    move-result v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "getType: match="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ",uri="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "MyFileProvider"
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v1, 1
    if-ne v0, v1, :L0
    const-string p1, "image/*"
    return-object p1
  :L0
    const/4 v1, 2
    if-ne v0, v1, :L1
    const-string p1, "text/plain"
    return-object p1
  :L1
  .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unknown URI: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Not supported"
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public onCreate()Z
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ".myfileprovider"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 2
    new-instance v1, Landroid/content/UriMatcher;
    const/4 v2, -1
    invoke-direct { v1, v2 }, Landroid/content/UriMatcher;-><init>(I)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/MyFileProvider;->b:Landroid/content/UriMatcher;
    const-string v2, "tmp_cache_path/*"
    const/4 v3, 1
  .line 3
    invoke-virtual { v1, v0, v2, v3 }, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MyFileProvider;->b:Landroid/content/UriMatcher;
    const-string v2, "box"
    const/4 v4, 2
    invoke-virtual { v1, v0, v2, v4 }, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
    return v3
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
  .catch Ljava/io/FileNotFoundException; { :L0 .. :L1 } :L2
  .registers 8
  .line 1
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "openFile: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, ","
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    const-string v0, "MyFileProvider"
    invoke-static { v0, p2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-virtual { p1 }, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object p2
    const-string v0, "/tmp_cache_path/"
    invoke-virtual { p2, v0 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result p2
    const/4 v1, 0
    if-eqz p2, :L3
  .line 3
    new-instance p2, Ljava/io/File;
    invoke-virtual { p0 }, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/n;->q(Landroid/content/Context;)Ljava/io/File;
    move-result-object v2
    invoke-virtual { p1 }, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object v3
    const-string v4, ""
    invoke-virtual { v3, v0, v4 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v0
    invoke-direct { p2, v2, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const/high16 v0, 4096
  :L0
  .line 4
    invoke-static { p2, v0 }, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    move-result-object p1
  :L1
    return-object p1
  :L2
  .line 5
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "File not found: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
    return-object v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
  .registers 6
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/MyFileProvider;->a(Landroid/net/Uri;)Landroid/net/Uri;
    move-result-object p1
  .line 2
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MyFileProvider;->b:Landroid/content/UriMatcher;
    invoke-virtual { p2, p1 }, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
    move-result p1
    const/4 p2, 2
    if-ne p1, p2, :L2
  .line 3
    new-instance p1, Landroid/database/MatrixCursor;
    const/4 p2, 1
    new-array p3, p2, [Ljava/lang/String;
    const-string p4, "data"
    const/4 p5, 0
    aput-object p4, p3, p5
    invoke-direct { p1, p3 }, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    new-array p2, p2, [Ljava/lang/Object;
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p3
    if-eqz p3, :L0
    const-string p3, "1"
    goto :L1
  :L0
    const-string p3, "0"
  :L1
    aput-object p3, p2, p5
    invoke-virtual { p1, p2 }, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    return-object p1
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
  .registers 5
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string p2, "Not supported"
    invoke-direct { p1, p2 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
