---
---

$ ->
    quarters = 16

    # First year + summer + Second year Autumn quarter
    p = 5 / quarters
    p = (p * 100).toString() + '%'
    $('#progress-college').width(p).text(p)

    # 2 quarters + summer
    gap = 3 / quarters
    gap = (gap * 100).toString() + '%'
    gap_text = 'gap (' + gap + ')'
    $('#progress-college-gap').width(gap).text(gap_text)

    now = Date.now()
    college_start = Date.UTC(2013, 9, 23, 14, 0, 0)
    college_resume = Date.UTC(2015, 9, 28, 14, 0, 0)
    college_end = Date.UTC(2017, 6, 14, 14, 0, 0)
    college_length = college_end - college_start

    p2 = (now - college_resume) / college_length
    p2 = (Math.round(p2 * 100 * 100) / 100).toString() + '%'
    $('#progress-college-2').width(p2).text(p2)

    $('#progress-high-school').width('100%').text('100%')
