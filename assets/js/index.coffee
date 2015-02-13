---
---

$ ->
    beginning  = Date.UTC(2013,9,23,19,0,0)
    leave      = Date.UTC(2015,1,5,14,0,0)
    graduation = Date.UTC(2017,6,14,14,0,0)
    now        = Date.now()
    p = (leave - beginning) / (graduation - beginning)
    p = Math.floor(p * 100).toString() + '%'
    $('#progress-college').width(p).text(p)
    q = (now - leave) / (graduation - beginning)
    q = Math.floor(q * 100).toString() + '%'
    $('#progress-college-supposed').width(q).text('paused')
    $('#progress-high-school').width('100%').text('100%')
