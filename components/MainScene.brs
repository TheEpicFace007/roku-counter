' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********  

sub init()
    m.top.SetFocus(true)
    
    counter = m.top.findNode("counter")
    counter.observeField("buttonSelected", "onCounterSelected")
End sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    result = false
    counter = m.top.getChild(1)
    
    counter.setFocus(true)
    return result
end function

sub onCounterSelected()
    count = m.top.getField("count")
    m.top.setField("count", count + 1)
    counter = m.top.getChild(1)
    counter.Text = "click count: " + count.ToStr()
end sub