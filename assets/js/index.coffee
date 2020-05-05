---
---

$ ->
    college_start = Date.UTC(2013, 9, 23, 14, 0, 0)
    college_gap = Date.UTC(2015, 1, 5, 14, 0, 0)
    college_resume = Date.UTC(2015, 9, 28, 14, 0, 0)
    college_end = Date.UTC(2017, 6, 14, 14, 0, 0)
    college_length = college_end - college_start

    p1 = (college_gap - college_start) / college_length
    p1 = (Math.round(p1 * 100 * 100) / 100).toString() + '%'
    $('#progress-college').width(p1)

    # 2 quarters + summer
    pg = (college_resume - college_gap) / college_length
    pg = (Math.round(pg * 100 * 100) / 100).toString() + '%'
    $('#progress-college-gap').width(pg).text("gap")

    p2 = (college_end - college_resume) / college_length
    p2 = (Math.round(p2 * 100 * 100 - 1) / 100).toString() + '%'
    $('#progress-college-2').width(p2).text("100%")

    $('#progress-high-school').width('100%').text('100%')
