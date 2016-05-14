#!/usr/bin/env python
# -*- coding: utf-8 -*-


####################################################
#   Node object defined here
####################################################

class Node(object):
    """
    Class which converts list of dict into relation based object
    Do not direct call this class, use `bulild_nodes` function instead
    """
    def __init__(self, input_dict, identifier, parent, children=[]):
        """
        TODO
        """
        self._input_dict = input_dict
        self._parent = parent
        self._children = children
        self._identifier = identifier

    def __getattr__(self, key):
        """
        Overriding __getattr__ so we would get obejct like
        behavior for our input_dict :)
        """
        if key in self._input_dict:
            return self._input_dict[key]
        else:
            return self.__dict__[key]

        raise AttributeError('Node object has no attribute named %s' % key)

    def __setattr__(self, key, value):
        """
        Overriding __setattr__
        """
        # mind it here, dont ever remove this condition,
        # it would go into infinite recursion

        # check if we have key in _input_dict, if it does, return it from
        # there, or else return it from global __dict__
        if '_input_dict' in self.__dict__ and key in self._input_dict.keys():
            self._input_dict[key] = value
        else:
            self.__dict__[key] = value


####################################################
# ObjectDict class which converts dict into objects
####################################################


class ObjectDict(dict):
    def __getattr__(self, key):
        if key in self:
            return self[key]
        return None

    def __setattr__(self, key, value):
        self[key] = value


####################################################
# Main function which will be called to build
# relationships from dictionary
####################################################


def bulild_nodes(list_of_dict, relation_syntax):
    """Function which converts list of dict into relation based object
    and preserves hiereachy across

    :param list_of_dict: list of dict
    :param relation_syntax: hierarchy syntax seperated by colon
                            ex - 'type:group.name:code'
                                 'drive:folder:file.name.id'

        : This supports nested relation establishment by adding . into the key

    :returns: TODO
    """
    hierarchical_list = relation_syntax.split(':')
    for each_input in list_of_dict:
        # node list which will have all of our nodes init,
        # for the time being, we will change the approach while
        # optimizing the logic
        node_list = list()
        for level_index, each_level in enumerate(hierarchical_list):
            parent_node = None if (level_index == 0) else node_list[-1]
            children = []
            identifier = each_level
            if '.' in each_input:
                # convert each_input to object first
                object_dict = ObjectDict(each_input)
            else:
                # convert each_input to object first
                object_dict = ObjectDict(each_input)

            # create Node now
            node_object = Node(object_dict,
                               identifier=identifier,
                               children=children,
                               parent=parent_node
                               )
            node_list.append(node_object)

        # always return child obejct from the hierarchical_list, ie, child
        yield node_list[-1]
