local icon = script.parent
icon:SetWorldPosition(icon:GetWorldPosition() + Vector3.UP * 200)
icon:SetWorldScale(Vector3.ZERO)
icon:LookAtLocalView(true)
Task.Wait(2)

icon:ScaleTo(Vector3.ONE * 1, 0.09)
Task.Wait(0.09)
icon:ScaleTo(Vector3.ONE * 0.8, 0.09)

Task.Wait(2)
icon:ScaleTo(Vector3.ZERO, 0.2)
