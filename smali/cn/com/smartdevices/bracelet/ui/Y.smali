.class Lcn/com/smartdevices/bracelet/ui/Y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/W;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/W;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/Y;->a:Lcn/com/smartdevices/bracelet/ui/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/Y;->a:Lcn/com/smartdevices/bracelet/ui/W;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/W;->b(Lcn/com/smartdevices/bracelet/ui/W;)Lcn/com/smartdevices/bracelet/ui/ab;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/smartdevices/bracelet/ui/ab;->c()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/Y;->a:Lcn/com/smartdevices/bracelet/ui/W;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/W;->dismiss()V

    return-void
.end method
