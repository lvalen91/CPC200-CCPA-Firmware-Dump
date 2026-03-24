.class public Lcn/manstep/phonemirrorBox/l0/r;
.super Lcn/manstep/phonemirrorBox/l0/m;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c0:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d0:Lcn/manstep/phonemirrorBox/d0/j;

.field private final e0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/util/o;",
            ">;"
        }
    .end annotation
.end field

.field private f0:Lcn/manstep/phonemirrorBox/i0/u;

.field private g0:Landroidx/recyclerview/widget/RecyclerView;

.field private h0:Landroidx/fragment/app/n;

.field private i0:Lcn/manstep/phonemirrorBox/util/e0;

.field private j0:Landroid/widget/Button;

.field private k0:Ljava/io/File;

.field private l0:Ljava/io/File;

.field private m0:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Lcn/manstep/phonemirrorBox/l0/r;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->c0:Landroidx/activity/result/c;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->c0:Landroidx/activity/result/c;

    return-void
.end method

.method private h2(Ljava/lang/String;)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    return v1
.end method

.method private i2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_4d

    .line 2
    :try_start_b
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_46

    const/16 p2, 0x400

    :try_start_2b
    new-array p2, p2, [B

    .line 3
    :goto_2d
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_37

    .line 4
    invoke-virtual {p1, p2, v0, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_3f

    goto :goto_2d

    :cond_37
    const/4 p2, 0x1

    .line 5
    :try_start_38
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_46

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_4d

    return p2

    :catchall_3f
    move-exception p2

    .line 6
    :try_start_40
    throw p2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p2

    .line 7
    :try_start_42
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_45

    :catchall_45
    :try_start_45
    throw p2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p1

    .line 8
    :try_start_47
    throw p1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p1

    .line 9
    :try_start_49
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4c

    :catchall_4c
    :try_start_4c
    throw p1
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method private j2(Ljava/io/File;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_32

    aget-object v2, p1, v1

    .line 6
    invoke-direct {p0, v2, p2}, Lcn/manstep/phonemirrorBox/l0/r;->j2(Ljava/io/File;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 7
    :cond_25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cn.manstep.phonemirrorBox.fileprovider"

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    return-void
.end method

.method private k2(Ljava/io/File;)Lcn/manstep/phonemirrorBox/util/o;
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_30

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_30

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mmap3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 5
    new-instance v5, Lcn/manstep/phonemirrorBox/util/m;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcn/manstep/phonemirrorBox/util/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 6
    :cond_30
    new-instance v0, Lcn/manstep/phonemirrorBox/util/o;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcn/manstep/phonemirrorBox/util/o;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private l2()[Ljava/io/File;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/util/o;

    .line 3
    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/util/o;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/manstep/phonemirrorBox/util/m;

    .line 4
    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/util/m;->c()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 5
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/util/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_3e
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method public static newInstance()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/r;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/l0/r;-><init>()V

    return-object v0
.end method

.method private w2([Ljava/io/File;)V
    .registers 9

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_7d

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_15

    aget-object v4, p1, v3

    .line 4
    invoke-direct {p0, v4, v0}, Lcn/manstep/phonemirrorBox/l0/r;->j2(Ljava/io/File;Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 5
    :cond_15
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "cn.manstep.phonemirrorBox.file_share"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "receive"

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 8
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v2, 0x3

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 11
    invoke-virtual {v3, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 12
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 14
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 15
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_53

    .line 17
    :cond_6b
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a2(Landroid/content/Intent;)V

    goto :goto_8a

    .line 18
    :cond_6f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6ca1\u6709\u627e\u5230\u63a5\u6536\u7aef\u7a0b\u5e8f"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_8a

    .line 19
    :cond_7d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_8a
    return-void
.end method

.method private x2(Landroid/view/View;Lcn/manstep/phonemirrorBox/util/m;[Ljava/lang/String;)V
    .registers 8

    .line 1
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43420000    # 194.0f

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08010b

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/h;

    invoke-direct {v1, p0, p3, p2, v0}, Lcn/manstep/phonemirrorBox/l0/h;-><init>(Lcn/manstep/phonemirrorBox/l0/r;[Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/m;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 10
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method private y2(Landroid/view/View;Lcn/manstep/phonemirrorBox/util/o;[Ljava/lang/String;)V
    .registers 8

    .line 1
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43110000    # 145.0f

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08010b

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/d;

    invoke-direct {v1, p0, p3, p2, v0}, Lcn/manstep/phonemirrorBox/l0/d;-><init>(Lcn/manstep/phonemirrorBox/l0/r;[Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/o;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 10
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;

    if-nez p3, :cond_1b

    .line 2
    new-instance p3, Landroidx/lifecycle/w$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_16

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_16
    invoke-direct {p3, v0}, Landroidx/lifecycle/w$a;-><init>(Landroid/app/Application;)V

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;

    :cond_1b
    const p3, 0x7f0c0051

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/i0/u;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->f0:Lcn/manstep/phonemirrorBox/i0/u;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->G(Landroidx/lifecycle/j;)V

    .line 5
    new-instance p1, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;

    move-result-object p2

    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;

    invoke-direct {p1, p2, p3}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V

    const-class p2, Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/x0/k;

    .line 6
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/r;->f0:Lcn/manstep/phonemirrorBox/i0/u;

    invoke-virtual {p2, p1}, Lcn/manstep/phonemirrorBox/i0/u;->L(Lcn/manstep/phonemirrorBox/x0/k;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->h0:Landroidx/fragment/app/n;

    .line 8
    new-instance p1, Lcn/manstep/phonemirrorBox/util/e0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/r;->h0:Landroidx/fragment/app/n;

    invoke-direct {p1, p2, p3}, Lcn/manstep/phonemirrorBox/util/e0;-><init>(Landroid/content/Context;Landroidx/fragment/app/n;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->i0:Lcn/manstep/phonemirrorBox/util/e0;

    .line 9
    new-instance p1, Landroidx/activity/result/f/c;

    invoke-direct {p1}, Landroidx/activity/result/f/c;-><init>()V

    new-instance p2, Lcn/manstep/phonemirrorBox/l0/b;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/l0/b;-><init>(Lcn/manstep/phonemirrorBox/l0/r;)V

    .line 10
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->H1(Landroidx/activity/result/f/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->c0:Landroidx/activity/result/c;

    .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->f0:Lcn/manstep/phonemirrorBox/i0/u;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->t()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcn/manstep/phonemirrorBox/l0/m;->g1(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/r;->f0:Lcn/manstep/phonemirrorBox/i0/u;

    iget-object p2, p2, Lcn/manstep/phonemirrorBox/i0/u;->v:Landroid/widget/ImageView;

    new-instance v0, Lcn/manstep/phonemirrorBox/l0/r$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/l0/r$a;-><init>(Lcn/manstep/phonemirrorBox/l0/r;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900ed

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/r;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/n;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/r;->k0:Ljava/io/File;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/r;->l0:Ljava/io/File;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/n;->m(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/r;->m0:Ljava/io/File;

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    invoke-direct {p0, p2}, Lcn/manstep/phonemirrorBox/l0/r;->k2(Ljava/io/File;)Lcn/manstep/phonemirrorBox/util/o;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->k0:Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/l0/r;->k2(Ljava/io/File;)Lcn/manstep/phonemirrorBox/util/o;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->l0:Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/l0/r;->k2(Ljava/io/File;)Lcn/manstep/phonemirrorBox/util/o;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u53e6\u5b58\u4e3a"

    aput-object v1, p2, v0

    const-string v2, "\u4e0a\u4f20"

    const/4 v3, 0x1

    aput-object v2, p2, v3

    const/4 v2, 0x2

    const-string v4, "\u5220\u9664"

    aput-object v4, p2, v2

    const/4 v5, 0x3

    const-string v6, "\u53d6\u6d88"

    aput-object v6, p2, v5

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v0

    aput-object v4, v5, v3

    aput-object v6, v5, v2

    .line 11
    new-instance v0, Lcn/manstep/phonemirrorBox/d0/j;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    new-instance v3, Lcn/manstep/phonemirrorBox/l0/i;

    invoke-direct {v3, p0, p2}, Lcn/manstep/phonemirrorBox/l0/i;-><init>(Lcn/manstep/phonemirrorBox/l0/r;[Ljava/lang/String;)V

    new-instance p2, Lcn/manstep/phonemirrorBox/l0/a;

    invoke-direct {p2, p0, v5}, Lcn/manstep/phonemirrorBox/l0/a;-><init>(Lcn/manstep/phonemirrorBox/l0/r;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, p2}, Lcn/manstep/phonemirrorBox/d0/j;-><init>(Landroid/content/Context;Ljava/util/List;Lcn/manstep/phonemirrorBox/d0/i$b;Lcn/manstep/phonemirrorBox/d0/j$b;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->d0:Lcn/manstep/phonemirrorBox/d0/j;

    .line 12
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/r;->g0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 13
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/r;->g0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    const p2, 0x7f090273

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 15
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/c;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/l0/c;-><init>(Lcn/manstep/phonemirrorBox/l0/r;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f090208

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 17
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/f;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/l0/f;-><init>(Lcn/manstep/phonemirrorBox/l0/r;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900fd

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->j0:Landroid/widget/Button;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, p2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_ec

    .line 20
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->j0:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 21
    :cond_ec
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->j0:Landroid/widget/Button;

    new-instance p2, Lcn/manstep/phonemirrorBox/l0/g;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/l0/g;-><init>(Lcn/manstep/phonemirrorBox/l0/r;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic m2()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->d0:Lcn/manstep/phonemirrorBox/d0/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$f;->h()V

    return-void
.end method

.method public synthetic n2(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u6743\u9650\u5df2\u6388\u4e88"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->j0:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_29

    .line 4
    :cond_1c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u6743\u9650\u88ab\u62d2\u7edd"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_29
    return-void
.end method

.method public synthetic o2([Ljava/lang/String;Landroid/view/View;Lcn/manstep/phonemirrorBox/util/m;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2, p3, p1}, Lcn/manstep/phonemirrorBox/l0/r;->x2(Landroid/view/View;Lcn/manstep/phonemirrorBox/util/m;[Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090208

    if-ne v0, v1, :cond_17

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/r;->l2()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_17

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/r;->l2()[Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/l0/r;->w2([Ljava/io/File;)V

    .line 5
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900fd

    if-ne p1, v0, :cond_3b

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3b

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x7b

    invoke-static {p1, v1, v0}, Landroidx/core/app/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_3b
    return-void
.end method

.method public synthetic p2([Ljava/lang/String;Landroid/view/View;Lcn/manstep/phonemirrorBox/util/o;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2, p3, p1}, Lcn/manstep/phonemirrorBox/l0/r;->y2(Landroid/view/View;Lcn/manstep/phonemirrorBox/util/o;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic q2(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/o;

    .line 2
    invoke-virtual {v0, p2}, Lcn/manstep/phonemirrorBox/util/o;->d(Z)V

    .line 3
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/o;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/util/m;

    .line 4
    invoke-virtual {v1, p2}, Lcn/manstep/phonemirrorBox/util/m;->d(Z)V

    goto :goto_1d

    .line 5
    :cond_2d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->g0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcn/manstep/phonemirrorBox/l0/e;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/l0/e;-><init>(Lcn/manstep/phonemirrorBox/l0/r;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic r2(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/r;->l2()[Ljava/io/File;

    move-result-object p1

    array-length p1, p1

    if-eqz p1, :cond_e

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/r;->l2()[Ljava/io/File;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/l0/r;->w2([Ljava/io/File;)V

    :cond_e
    return-void
.end method

.method public synthetic s2(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_11

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->c0:Landroidx/activity/result/c;

    invoke-virtual {p1, v0}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public synthetic t2([Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/m;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    .line 1
    aget-object p1, p1, p6

    const-string p4, "\u53e6\u5b58\u4e3a"

    .line 2
    invoke-static {p1, p4}, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_52

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string p4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, p4}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1c

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->c0:Landroidx/activity/result/c;

    invoke-virtual {p1, p4}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    .line 5
    :cond_1c
    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/m;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/m;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4}, Lcn/manstep/phonemirrorBox/l0/r;->i2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6587\u4ef6\u53e6\u5b58\u6210\u529f"

    invoke-static {p1, p2, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_4e

    .line 7
    :cond_40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    const-string p4, "\u6587\u4ef6\u53e6\u5b58\u5931\u8d25!"

    invoke-static {p1, p4, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 8
    :goto_4e
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_aa

    :cond_52
    const-string p4, "\u4e0a\u4f20"

    .line 9
    invoke-static {p1, p4}, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6b

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->i0:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/m;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/m;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcn/manstep/phonemirrorBox/util/e0;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_aa

    :cond_6b
    const-string p4, "\u5220\u9664"

    .line 12
    invoke-static {p1, p4}, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9f

    .line 13
    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/m;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/l0/r;->h2(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6587\u4ef6\u5df2\u6210\u529f\u5220\u9664\uff01"

    invoke-static {p1, p2, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_98

    .line 15
    :cond_8b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6587\u4ef6\u5220\u9664\u5931\u8d25\uff01"

    invoke-static {p1, p2, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 16
    :goto_98
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/l0/r;->v2()V

    .line 17
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_aa

    :cond_9f
    const-string p2, "\u53d6\u6d88"

    .line 18
    invoke-static {p1, p2}, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 19
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_aa
    :goto_aa
    return-void
.end method

.method public synthetic u2([Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/o;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    .line 1
    aget-object p1, p1, p6

    const-string p4, "\u53e6\u5b58\u4e3a"

    .line 2
    invoke-static {p1, p4}, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_8d

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string p4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, p4}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1c

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/r;->c0:Landroidx/activity/result/c;

    invoke-virtual {p1, p4}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    .line 5
    :cond_1c
    new-instance p1, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p6

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "/"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/o;->b()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/o;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/manstep/phonemirrorBox/util/m;

    .line 8
    invoke-virtual {p4}, Lcn/manstep/phonemirrorBox/util/m;->a()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4}, Lcn/manstep/phonemirrorBox/util/m;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p7

    invoke-direct {p0, p6, p4, p7}, Lcn/manstep/phonemirrorBox/l0/r;->i2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4c

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    const-string p4, "\u6587\u4ef6\u53e6\u5b58\u5931\u8d25!"

    invoke-static {p1, p4, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 10
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void

    .line 11
    :cond_7c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6587\u4ef6\u5939\u53e6\u5b58\u6210\u529f"

    invoke-static {p1, p2, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 12
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_e6

    :cond_8d
    const-string p4, "\u5220\u9664"

    .line 13
    invoke-static {p1, p4}, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_db

    .line 14
    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/o;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/manstep/phonemirrorBox/util/m;

    .line 15
    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/m;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/manstep/phonemirrorBox/l0/r;->h2(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9d

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6587\u4ef6\u5220\u9664\u5931\u8d25\uff01"

    invoke-static {p1, p2, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 17
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/l0/r;->v2()V

    .line 18
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void

    .line 19
    :cond_c7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6587\u4ef6\u5df2\u6210\u529f\u5220\u9664\uff01"

    invoke-static {p1, p2, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 20
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/l0/r;->v2()V

    .line 21
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_e6

    :cond_db
    const-string p2, "\u53d6\u6d88"

    .line 22
    invoke-static {p1, p2}, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 23
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_e6
    :goto_e6
    return-void
.end method

.method public v2()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/r;->m0:Ljava/io/File;

    invoke-direct {p0, v1}, Lcn/manstep/phonemirrorBox/l0/r;->k2(Ljava/io/File;)Lcn/manstep/phonemirrorBox/util/o;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/r;->k0:Ljava/io/File;

    invoke-direct {p0, v1}, Lcn/manstep/phonemirrorBox/l0/r;->k2(Ljava/io/File;)Lcn/manstep/phonemirrorBox/util/o;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->e0:Ljava/util/List;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/r;->l0:Ljava/io/File;

    invoke-direct {p0, v1}, Lcn/manstep/phonemirrorBox/l0/r;->k2(Ljava/io/File;)Lcn/manstep/phonemirrorBox/util/o;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/r;->d0:Lcn/manstep/phonemirrorBox/d0/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$f;->h()V

    return-void
.end method
