.class Lc/g/h/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/g/h/a;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lc/g/h/f$c;

.field final synthetic c:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lc/g/h/a;Lc/g/h/f$c;Landroid/graphics/Typeface;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lc/g/h/a$a;->b:Lc/g/h/f$c;

    iput-object p3, p0, Lc/g/h/a$a;->c:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/g/h/a$a;->b:Lc/g/h/f$c;

    iget-object v1, p0, Lc/g/h/a$a;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lc/g/h/f$c;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
