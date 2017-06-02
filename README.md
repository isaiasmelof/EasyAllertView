## EasyAllertView

Plataforma: iOS

![png](https://github.com/isaiasmelof/EasyAllertView/blob/master/images/img1.png)

## Como Usar

```swift
  
  //Você pode criar um array de easyActions
   var actionsArray:Array<EasyAction> = Array()
        
        
   let action1 = EasyAction(usingTitle: "OK", andAlerActionStyle: UIAlertActionStyle.default)
   let action2 = EasyAction(usingTitle: "Cancel", andAlerActionStyle: UIAlertActionStyle.cancel)
        
    //adicionando ações ao seu array
    actionsArray.append(action1)
    actionsArray.append(action2)
        
    let newAlert:EasyAlertController = EasyAlertController(title: "Easy", menssage: "easy peasy lemon squeezy", actions: actionsArray, style: UIAlertControllerStyle.alert)
        
        
    newAlert.showEasyAlert(controller: self) //self = Sua viewController
    

```

## EasyAlertControllerDelegate

Utilizado para identificar a ação executada pelo usuário

Exemplo:

```swift
func userDidSelectAction(action: EasyAction, atIndex index: Int) {
        
    print("user selected action at index: \(index) for action: \(action.action?.title!)")
        
}
```
