.class public Lcn/manstep/phonemirrorBox/l;
.super Landroid/app/Dialog;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/l$c;
  }
.end annotation

.field private b:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/g0/b;",
      ">;"
    }
  .end annotation
.end field

.field private c:Lcn/manstep/phonemirrorBox/d0/h;

.field private d:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Lcn/manstep/phonemirrorBox/l$c;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
    const v0, 2131755249
  .line 1
    invoke-direct { p0, p1, v0 }, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
    const-string v0, "BluetoothPairListDialog,BluetoothPairListDialog: A"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l;->d:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/l;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l;->e()V
    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/l;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l;->f()V
    return-void
.end method

.method private c()V
  .catch Ljava/lang/Exception; { :L0 .. :L3 } :L4
  .registers 11
    const-string v0, "BluetoothPairListDialog,initData"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v0
  .line 4
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L6
    invoke-virtual { v0 }, Ljava/io/File;->isDirectory()Z
    move-result v1
    if-nez v1, :L0
    goto/16 :L6
  :L0
  .line 5
    new-instance v1, Ljava/io/FileInputStream;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0 }, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, "/bluetooth_pair_list"
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
  .line 6
    invoke-virtual { v1 }, Ljava/io/FileInputStream;->available()I
    move-result v0
  .line 7
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "BluetoothPairListDialog,initData: len="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 8
    new-instance v0, Ljava/io/InputStreamReader;
    invoke-direct { v0, v1 }, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
  .line 9
    new-instance v2, Ljava/io/BufferedReader;
    invoke-direct { v2, v0 }, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    const/4 v3, 0
    const/4 v4, 0
  :L1
  .line 10
    invoke-virtual { v2 }, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v5
    if-eqz v5, :L2
  .line 11
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "BluetoothPairListDialog,initData: "
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 1
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v7, "="
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 12
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    new-instance v7, Lcn/manstep/phonemirrorBox/g0/b;
    const/16 v8, 17
    invoke-virtual { v5, v8 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v9
    invoke-virtual { v5, v3, v8 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v5
    invoke-direct { v7, v9, v5 }, Lcn/manstep/phonemirrorBox/g0/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-interface { v6, v7 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L1
  :L2
  .line 13
    invoke-virtual { v2 }, Ljava/io/BufferedReader;->close()V
  .line 14
    invoke-virtual { v0 }, Ljava/io/InputStreamReader;->close()V
  .line 15
    invoke-virtual { v1 }, Ljava/io/FileInputStream;->close()V
  :L3
    goto :L5
  :L4
    move-exception v0
  .line 16
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BluetoothPairListDialog,initData: \n"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L5
  .line 17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l;->c:Lcn/manstep/phonemirrorBox/d0/h;
    invoke-virtual { v0 }, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
  :L6
    return-void
.end method

.method private d()V
  .registers 4
    const-string v0, "BluetoothPairListDialog,initView"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const v0, 2131296905
  .line 2
    invoke-virtual { p0, v0 }, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l;->e:Landroid/widget/TextView;
    const v0, 2131296381
  .line 3
    invoke-virtual { p0, v0 }, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/Button;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l;->f:Landroid/widget/Button;
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/l$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/l$a;-><init>(Lcn/manstep/phonemirrorBox/l;)V
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l;->f:Landroid/widget/Button;
    new-instance v1, Lcn/manstep/phonemirrorBox/l$b;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/l$b;-><init>(Lcn/manstep/phonemirrorBox/l;)V
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
  .line 6
    new-instance v0, Ljava/util/LinkedList;
    invoke-direct { v0 }, Ljava/util/LinkedList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
  .line 7
    new-instance v0, Lcn/manstep/phonemirrorBox/d0/h;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-direct { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/d0/h;-><init>(Landroid/content/Context;Ljava/util/List;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l;->c:Lcn/manstep/phonemirrorBox/d0/h;
    const v0, 2131296596
  .line 8
    invoke-virtual { p0, v0 }, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ListView;
  .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l;->c:Lcn/manstep/phonemirrorBox/d0/h;
    invoke-virtual { v0, v1 }, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
  .line 10
    invoke-virtual { v0, p0 }, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
  .line 11
    invoke-virtual { v0, p0 }, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    return-void
.end method

.method private e()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l;->g:Lcn/manstep/phonemirrorBox/l$c;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/l$c;->c()V
  :L0
    return-void
.end method

.method private f()V
  .registers 1
    return-void
.end method

.method public dismiss()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Dialog;->dismiss()V
    const-string v0, "BluetoothPairListDialog,dismiss: ####"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public g(Lcn/manstep/phonemirrorBox/l$c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l;->g:Lcn/manstep/phonemirrorBox/l$c;
    return-void
.end method

.method public h(Ljava/lang/String;)V
  .registers 8
    const-string v0, ","
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p1
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 0
  :L0
  .line 2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v3
    if-ge v1, v3, :L4
  .line 3
    array-length v3, p1
    const/4 v4, 1
    if-ge v3, v4, :L1
  .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { v3, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lcn/manstep/phonemirrorBox/g0/b;
    invoke-virtual { v3, v0 }, Lcn/manstep/phonemirrorBox/g0/b;->d(Z)V
    goto :L3
  :L1
  .line 5
    aget-object v3, p1, v2
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { v5, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcn/manstep/phonemirrorBox/g0/b;
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/g0/b;->a()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v3, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L2
  .line 6
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { v3, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lcn/manstep/phonemirrorBox/g0/b;
    invoke-virtual { v3, v4 }, Lcn/manstep/phonemirrorBox/g0/b;->d(Z)V
    add-int/lit8 v3, v2, 1
  .line 7
    array-length v4, p1
    if-ge v3, v4, :L3
    move v2, v3
    goto :L3
  :L2
  .line 8
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { v3, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lcn/manstep/phonemirrorBox/g0/b;
    invoke-virtual { v3, v0 }, Lcn/manstep/phonemirrorBox/g0/b;->d(Z)V
  :L3
    add-int/lit8 v1, v1, 1
    goto :L0
  :L4
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l;->c:Lcn/manstep/phonemirrorBox/d0/h;
    invoke-virtual { p1 }, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    return-void
.end method

.method public hide()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/app/Dialog;->hide()V
    return-void
.end method

.method public i()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l;->c()V
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
  .registers 3
    const-string v0, "BluetoothPairListDialog,onCreate: A"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-super { p0, p1 }, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
    const p1, 2131492900
  .line 3
    invoke-virtual { p0, p1 }, Landroid/app/Dialog;->setContentView(I)V
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l;->d()V
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/widget/AdapterView<",
      "*>;",
      "Landroid/view/View;",
      "IJ)V"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { p1, p3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/g0/b;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/g0/b;->a()Ljava/lang/String;
    move-result-object p1
  .line 2
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "BluetoothPairListDialog,onItemClick: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l;->g:Lcn/manstep/phonemirrorBox/l$c;
    invoke-interface { p2, p1 }, Lcn/manstep/phonemirrorBox/l$c;->b(Ljava/lang/String;)V
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/widget/AdapterView<",
      "*>;",
      "Landroid/view/View;",
      "IJ)Z"
    }
  .end annotation
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .registers 7
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { p1, p3 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l;->c:Lcn/manstep/phonemirrorBox/d0/h;
    invoke-virtual { p1 }, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    const/4 p1, 0
    const-string p2, ""
    const/4 p3, 0
  :L0
  .line 3
    iget-object p4, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { p4 }, Ljava/util/List;->size()I
    move-result p4
    if-ge p3, p4, :L1
  .line 4
    new-instance p4, Ljava/lang/StringBuilder;
    invoke-direct { p4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { p2, p3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Lcn/manstep/phonemirrorBox/g0/b;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/g0/b;->a()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { p2, p3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Lcn/manstep/phonemirrorBox/g0/b;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/g0/b;->b()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, "\n"
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    add-int/lit8 p3, p3, 1
    goto :L0
  :L1
  .line 5
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l;->g:Lcn/manstep/phonemirrorBox/l$c;
    new-instance p4, Ljava/lang/StringBuilder;
    invoke-direct { p4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p5, "\u0000"
    invoke-virtual { p4, p5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p4
    invoke-interface { p3, p4 }, Lcn/manstep/phonemirrorBox/l$c;->a(Ljava/lang/String;)V
  .line 6
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { p3 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Landroid/content/Context;
    const/4 p4, 1
    if-nez p3, :L2
    return p4
  :L2
  .line 7
    invoke-virtual { p3 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object p3
  .line 8
    invoke-virtual { p3 }, Ljava/io/File;->exists()Z
    move-result p5
    if-eqz p5, :L6
    invoke-virtual { p3 }, Ljava/io/File;->isDirectory()Z
    move-result p5
    if-nez p5, :L3
    goto :L6
  :L3
  .line 9
    new-instance p5, Ljava/io/FileOutputStream;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p3, "/bluetooth_pair_list"
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-direct { p5, p3 }, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
  .line 10
    invoke-virtual { p2 }, Ljava/lang/String;->getBytes()[B
    move-result-object p3
    invoke-virtual { p2 }, Ljava/lang/String;->getBytes()[B
    move-result-object p2
    array-length p2, p2
    invoke-virtual { p5, p3, p1, p2 }, Ljava/io/FileOutputStream;->write([BII)V
  .line 11
    invoke-virtual { p5 }, Ljava/io/FileOutputStream;->close()V
  :L4
    goto :L6
  :L5
    move-exception p1
  .line 12
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "BluetoothPairListDialog,onItemLongClick: \n"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L6
    return p4
.end method

.method public setTitle(I)V
  .registers 3
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l;->e:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(I)V
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l;->e:Landroid/widget/TextView;
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public show()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Dialog;->show()V
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l;->c()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-nez v0, :L0
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l;->e()V
  :L0
    return-void
.end method
