package com.module.resourceview;

import org.springframework.web.servlet.view.InternalResourceView;

import java.io.File;
import java.util.Locale;

public class HtmlResourceView extends InternalResourceView {
    @Override
    public boolean checkResource(Locale locale) {
        System.out.println(this.getServletContext().getRealPath("/") + "++" + super.getUrl());
        File file = new File(this.getServletContext().getRealPath("/") + super.getUrl());
        return file.exists();
    }
}
