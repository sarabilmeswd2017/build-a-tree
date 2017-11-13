module FamilyMembersHelper
  def family_tree(members)
    members.map do |member, children|
      render(member) + content_tag(:div, family_tree(children), class: 'children')
    end.join.html_safe
  end
end
