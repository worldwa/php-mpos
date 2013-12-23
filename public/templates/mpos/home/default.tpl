{section name=news loop=$NEWS}
    <article class="module width_full">
      <header><h3>{$NEWS[news].header}
          {*, <font size=\"1px\">{$NEWS[news].time|date_format:"%Y-%m-%d %H:%M"}</font></h3></header>*}
      <div class="module_content">
        {$NEWS[news].content}
        <div class="clear"></div>
      </div>
    </article>
{/section}
