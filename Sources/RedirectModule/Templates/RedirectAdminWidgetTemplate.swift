//
//  RedirectAdminWidgetTemplate.swift
//  
//
//  Created by Steve Tibbett on 2021-12-19
//

import Vapor
import Feather
import RedirectObjects
import SwiftHtml
import FeatherIcons

struct RedirectAdminWidgetTemplate: TemplateRepresentable {
    
    @TagBuilder
    func render(_ req: Request) -> Tag {
        Svg.arrowRightCircle
        H2("Redirect")
        Ul {
            if req.checkPermission(RedirectApi.Rule.permission(for: .list)) {
                Li {
                    A("Rules")
                        .href("/admin/redirect/rules/")
                }
            }
        }
    }
}
